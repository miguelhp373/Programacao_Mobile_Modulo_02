unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Edit,
  FMX.Layouts, FMX.StdCtrls, FMX.Controls.Presentation, FMX.ListBox,
  FMX.ComboEdit, System.ImageList, FMX.ImgList, FMX.ListView.Types,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListView,
  FMX.Objects,FMX.MultiResBitmap;

type TRectangleHelper = class helper for TRectangle
  Procedure ImagemByName(Name : String);
end;

type
  TForm1 = class(TForm)
    ToolBar1: TToolBar;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    GridPanelLayout1: TGridPanelLayout;
    GridPanelLayout2: TGridPanelLayout;
    Label3: TLabel;
    GridPanelLayout3: TGridPanelLayout;
    btnplay: TButton;
    btnpause: TButton;
    Timer1: TTimer;
    Timer2: TTimer;
    Timer3: TTimer;
    ComboBox1: TComboBox;
    ImageList1: TImageList;
    Rectangle1: TRectangle;
    Rectangle2: TRectangle;
    Rectangle3: TRectangle;
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnplayClick(Sender: TObject);
    procedure btnpauseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  n1,n2,n3,saldo,aposta:Integer;

implementation

{$R *.fmx}

procedure TForm1.btnpauseClick(Sender: TObject);
begin
Timer1.Enabled := false;
Timer2.Enabled := false;
Timer3.Enabled := false;


btnpause.Enabled := false;

 saldo := StrToInt(Label2.Text);

if(n1 = n2)and(n2 = n3)then
  begin
    saldo := saldo + 5 * aposta;
    Label2.Text := IntToStr(saldo);
    ShowMessage('Parab�ns Voc� Ganhou '+IntToStr(saldo));
  end
else if(n1 = n2)or(n2 = n3)or(n1 = n3)then
  begin
    saldo := saldo + 2 * aposta;
    Label2.Text := IntToStr(saldo);
    ShowMessage('Parab�ns Voc� Ganhou '+IntToStr(saldo));
  end
else
    begin

     saldo := saldo - aposta;

    if(saldo<0)then
      begin
        saldo := 0;
        Label2.Text := IntToStr(saldo);
        ShowMessage('Que Pena, N�o Foi desta Vez, Voc� Perdeu Tudo!');
      end
      else
        begin
          Label2.Text := IntToStr(saldo);
          ShowMessage('Que Pena, N�o Foi desta Vez!');
        end;
  end;
    btnplay.Enabled := true;
end;

procedure TForm1.btnplayClick(Sender: TObject);
begin
saldo := StrToInt(Label2.Text);
if(StrToIntDef(ComboBox1.Selected.Text, 0) = 0)then
  begin
    ShowMessage('selecione um valor antes de apostar!');
  end
  else if(saldo = 0) then
    begin
      ShowMessage('Seu Saldo � 0 Reinicie o Jogo, Para Uma Nova Partida!');
    end
      else
      begin
        Timer1.Enabled := True;
        Timer2.Enabled := True;
        Timer3.Enabled := True;

        aposta := StrToInt(ComboBox1.Selected.Text);

        btnpause.Enabled := true;
        btnplay.Enabled := false;



  end;


end;

procedure TForm1.Button1Click(Sender: TObject);
begin
saldo := 2000;
Label2.Text := IntToStr(saldo);
ComboBox1.ItemIndex:= 0;
end;


procedure TForm1.FormCreate(Sender: TObject);
begin
btnpause.Enabled := false;
end;


procedure TForm1.Timer1Timer(Sender: TObject);
begin
  Randomize;
  n1:=Random(9);
  //lbn1.Text:=IntToStr(n1);
  Rectangle1.ImagemByName('item '+ IntToStr(n1));

end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
  Randomize;
  n2:=Random(9);
  //lbn2.Text:=IntToStr(n2);
  Rectangle2.ImagemByName('item '+ IntToStr(n2));
end;

procedure TForm1.Timer3Timer(Sender: TObject);
begin
  Randomize;
  n3:=Random(9);
  //lbn3.Text:=IntToStr(n3);
  Rectangle3.ImagemByName('item '+ IntToStr(n3));
end;

{ TRectangleHelper }

procedure TRectangleHelper.ImagemByName(Name: String);
var
  item:TcustomBitmapItem;
  size:TSize;
begin
  Form1.ImageList1.BitmapItemByName(Name,Item,Size);
  self.Fill.Bitmap.Bitmap := item.MultiResBitmap.Bitmaps[1.0];
end;

end.
