unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Layouts, FMX.ListBox, FMX.Objects;

type
  TForm1 = class(TForm)
    ToolBar1: TToolBar;
    ListBox1: TListBox;
    Label1: TLabel;
    ListBox2: TListBox;
    ListBoxItem1: TListBoxItem;
    ListBoxItem3: TListBoxItem;
    ListBoxItem4: TListBoxItem;
    ListBoxItem5: TListBoxItem;
    Image1: TImage;
    Image2: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    ListBoxItem2: TListBoxItem;
    Image3: TImage;
    procedure ListBoxItem1Click(Sender: TObject);
    procedure ListBoxItem3Click(Sender: TObject);
    procedure ListBoxItem4Click(Sender: TObject);
    procedure ListBoxItem2Click(Sender: TObject);
    procedure ListBoxItem5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

uses Unit2, Unit3, Unit4, Unit5, Unit6;





procedure TForm1.ListBoxItem1Click(Sender: TObject);
begin
apple.show;
end;

procedure TForm1.ListBoxItem2Click(Sender: TObject);
begin
samsung.Show;
end;

procedure TForm1.ListBoxItem3Click(Sender: TObject);
begin
asus.Show;
end;

procedure TForm1.ListBoxItem4Click(Sender: TObject);
begin
xiaomi.Show;
end;

procedure TForm1.ListBoxItem5Click(Sender: TObject);
begin
dell.Show;
end;

end.
