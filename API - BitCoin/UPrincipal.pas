unit UPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.TabControl,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Edit, REST.Types, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope, System.JSON;

type
  TForm1 = class(TForm)
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    btncalcular: TButton;
    btnclear: TButton;
    Button1: TButton;
    editconvertbitcoin: TEdit;
    editreais: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    TabItem2: TTabItem;
    TabItem3: TTabItem;
    procedure btncalcularClick(Sender: TObject);
    procedure btnclearClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ConvertToBitcoin;
    procedure CalcularConversao;
  end;

var
  Form1: TForm1;
  Reais, BitCoin, QtdBitcoin: real;

implementation

{$R *.fmx}

procedure TForm1.btnclearClick(Sender: TObject);
begin
editconvertbitcoin.Text := '';
editreais.Text := '';
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
   ConvertToBitcoin;
end;

procedure TForm1.btncalcularClick(Sender: TObject);
begin
  CalcularConversao;
end;



procedure TForm1.ConvertToBitcoin; //converte para bitcoin
var
  jsonvalue: TJSONValue;
begin
  RESTRequest1.Execute;
  jsonvalue := RESTResponse1.JSONValue;

  BitCoin := StrToFloat(
    StringReplace(
      copy(jsonvalue.ToString, Pos('"last":"',jsonvalue.ToString)+8, 14), '.',',',
       [rfReplaceAll,rfIgnoreCase]));
      editconvertbitcoin.Text := FormatFloat('#0.00',BitCoin);
end;

procedure TForm1.CalcularConversao;
begin
  Reais:= StrToFloat(editreais.Text);
  QtdBitcoin:= Reais / BitCoin;
  Label4.Text:= '';
  Label4.Text:= FormatFloat('#0.0000000',QtdBitcoin);
end;





end.
