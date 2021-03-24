unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Edit;

type
  TForm1 = class(TForm)
  Edit1: TEdit;
  Edit2: TEdit;
  Label1: TLabel;
  Label2: TLabel;
  Label3: TLabel;
  Button1: TButton;
  lbresult: TLabel;
  Button2: TButton;
  procedure Button1Click(Sender: TObject);
  procedure Button2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  HeightUser,WeightUser,ImcResult: Double;

implementation

{$R *.fmx}

procedure TForm1.Button1Click(Sender: TObject);
begin

    WeightUser := StrToFloat(Edit1.Text);
    HeightUser := StrToFloat(Edit2.Text);
    ImcResult := WeightUser / (HeightUser * HeightUser);

    if (ImcResult < 18.5) Then
      begin
        lbresult.Text := 'Abaixo do peso';
      end
    else if((ImcResult >=18.5)and(ImcResult<=24.9))Then
      begin
          lbresult.Text := 'Peso Normal';
      end
    else if((ImcResult >=25)and(ImcResult<=29.9))Then
      begin
           lbresult.Text := 'Sobre Peso';
      end
    else if((ImcResult >=30)and(ImcResult<=34.9))Then
      begin
          lbresult.Text := 'Obesidade Grau I';
      end
    else if((ImcResult >=35)and(ImcResult<=39.9))Then
      begin
           lbresult.Text := 'Obesidade Grau II';
      end
    else if(ImcResult >=40)Then 
      begin
          lbresult.Text := 'Obesidade Grau III';
      end;
    

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Edit1.Text := '';
Edit2.Text := '';
lbresult.Text:='';
HeightUser := 0;
WeightUser := 0;
ImcResult := 0;
end;

end.
