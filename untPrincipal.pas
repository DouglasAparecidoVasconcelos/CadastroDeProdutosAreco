unit untPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, DateUtils, Datasnap.DBClient,
  Vcl.Mask, Vcl.DBCtrls, System.IniFiles, Vcl.ToolWin, Vcl.ActnMan,
  Vcl.ActnCtrls, Vcl.ActnMenus, Vcl.Menus, Vcl.Imaging.jpeg,
  Vcl.Imaging.pngimage;

type
  TfrmPrincipal = class(TForm)
    MainMenu: TMainMenu;
    mmCrudProduto: TMenuItem;
    Image1: TImage;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    DBGrid1: TDBGrid;
    btnCadastraAlteraProduto: TButton;
    dsProduto: TDataSource;
    CadastrodeUsuarios1: TMenuItem;
    Sair1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure btnCadastraAlteraProdutoClick(Sender: TObject);
    procedure CadastrodeUsuarios1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses untDmPrincipal, untLogin, untCadProduto, untDmCadProduto, untCadUsuario;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin

  try

   if frmLogin = nil then
      frmLogin := TfrmLogin.Create(nil);

    frmLogin.ShowModal;

  finally
    FreeAndNil(frmLogin);
  end;

  StatusBar1.Panels[0].Text := DmPrincipal.cdsLocUsuarioNOME_COMPLETO.AsString +
    '     Seja Bem Vindo!!!';
end;

procedure TfrmPrincipal.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels[1].Text := DateTimeToStr(now);
end;

procedure TfrmPrincipal.btnCadastraAlteraProdutoClick(Sender: TObject);
begin
  if frmCadProduto = nil then
    frmCadProduto := TfrmCadProduto.Create(Self);

  frmCadProduto.ShowModal;
end;

procedure TfrmPrincipal.CadastrodeUsuarios1Click(Sender: TObject);
begin
  if frmCadUsuario = nil then
    frmCadUsuario := TfrmCadUsuario.Create(Self);

  frmCadUsuario.ShowModal
end;

procedure TfrmPrincipal.DBGrid1DblClick(Sender: TObject);
begin
  btnCadastraAlteraProdutoClick(Sender);
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DmPrincipal.FDConnection1.Close;
  FreeAndNil(DmPrincipal);
  FreeAndNil(dmCadProduto);
end;

procedure TfrmPrincipal.Sair1Click(Sender: TObject);
begin
  Application.Terminate;
end;

end.
