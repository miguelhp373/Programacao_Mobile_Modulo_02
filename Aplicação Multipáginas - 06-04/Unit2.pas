unit Unit2;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Layouts, FMX.Objects, FMX.Controls.Presentation;

type
  Tapple = class(TForm)
    ToolBar1: TToolBar;
    GridPanelLayout1: TGridPanelLayout;
    Button1: TButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Image2: TImage;
    Image3: TImage;
    Image1: TImage;
    GridPanelLayout2: TGridPanelLayout;
    Label2: TLabel;
    Label4: TLabel;
    Button2: TButton;
    GridPanelLayout3: TGridPanelLayout;
    Label1: TLabel;
    Label3: TLabel;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  apple: Tapple;

implementation

{$R *.fmx}

uses Unit1;

procedure Tapple.Button1Click(Sender: TObject);
begin
close;
Form1.Show;
end;

end.
