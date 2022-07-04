unit untCadUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TfrmCadUsuario = class(TForm)
    dsUsuario: TDataSource;
    GroupBox1: TGroupBox;
    DBNavigator1: TDBNavigator;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    dbCodigo: TDBEdit;
    dbDescricao: TDBEdit;
    dbPrecoCusto: TDBEdit;
    dbPrecoVenda: TDBEdit;
    dbQtedeEstoque: TDBEdit;
    DBGrid1: TDBGrid;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadUsuario: TfrmCadUsuario;

implementation

uses
  untDmcadUsuario;

{$R *.dfm}

procedure TfrmCadUsuario.FormCreate(Sender: TObject);
begin
  if dmCadUsuario = nil then
    dmCadUsuario := TdmCadUsuario.Create(Self);
end;

end.
