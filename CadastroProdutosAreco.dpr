program CadastroProdutosAreco;

uses
  Vcl.Forms,
  untPrincipal in 'untPrincipal.pas' {frmPrincipal},
  untDmPrincipal in 'untDmPrincipal.pas' {DmPrincipal: TDataModule},
  untLogin in 'untLogin.pas' {frmLogin},
  untCadUsuario in 'untCadUsuario.pas' {frmCadUsuario},
  untCadProduto in 'untCadProduto.pas' {frmCadProduto},
  untDmCadProduto in 'untDmCadProduto.pas' {dmCadProduto: TDataModule},
  untDmcadUsuario in 'untDmcadUsuario.pas' {dmCadUsuario: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Cadastro Produtos Areco';
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TDmPrincipal, DmPrincipal);
  Application.CreateForm(TdmCadProduto, dmCadProduto);
  Application.Run;

end.
