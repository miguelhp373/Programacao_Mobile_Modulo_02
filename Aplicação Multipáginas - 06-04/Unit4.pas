unit Unit4;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.Controls.Presentation, FMX.Layouts;

type
  Txiaomi = class(TForm)
    GridPanelLayout1: TGridPanelLayout;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Image2: TImage;
    Panel4: TPanel;
    Image3: TImage;
    ToolBar1: TToolBar;
    Button1: TButton;
    Image1: TImage;
    GridPanelLayout2: TGridPanelLayout;
    Label2: TLabel;
    Label4: TLabel;
    GridPanelLayout3: TGridPanelLayout;
    Label1: TLabel;
    Label3: TLabel;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  xiaomi: Txiaomi;

implementation

{$R *.fmx}

uses Unit1;

procedure Txiaomi.Button1Click(Sender: TObject);
begin
close;
Form1.show;
end;

end.
