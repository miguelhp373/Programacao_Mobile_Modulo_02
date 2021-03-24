program Project1;

uses
  System.StartUpCopy,
  FMX.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {apple},
  Unit3 in 'Unit3.pas' {asus},
  Unit4 in 'Unit4.pas' {xiaomi},
  Unit5 in 'Unit5.pas' {samsung},
  Unit6 in 'Unit6.pas' {dell};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(Tapple, apple);
  Application.CreateForm(Tasus, asus);
  Application.CreateForm(Txiaomi, xiaomi);
  Application.CreateForm(Tsamsung, samsung);
  Application.CreateForm(Tdell, dell);
  Application.Run;
end.
