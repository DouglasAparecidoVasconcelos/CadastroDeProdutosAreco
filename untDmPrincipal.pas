unit untDmPrincipal;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSSQL,
  FireDAC.Phys.MSSQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Datasnap.Provider, Datasnap.DBClient, System.IniFiles,
  Vcl.Dialogs, System.StrUtils, Vcl.Forms;

type
  TDmPrincipal = class(TDataModule)
    FDConnection1: TFDConnection;
    cdsLocUsuario: TClientDataSet;
    dspLocUsuario: TDataSetProvider;
    sqlLocUsuario: TFDQuery;
    sqlLocUsuarioID_USUARIO: TFDAutoIncField;
    sqlLocUsuarioNOME_COMPLETO: TStringField;
    sqlLocUsuarioDATA_NASC: TDateField;
    sqlLocUsuarioCPF: TStringField;
    sqlLocUsuarioID_CONTATO: TIntegerField;
    sqlLocUsuarioLOGIN: TStringField;
    cdsLocUsuarioID_USUARIO: TAutoIncField;
    cdsLocUsuarioNOME_COMPLETO: TStringField;
    cdsLocUsuarioDATA_NASC: TDateField;
    cdsLocUsuarioCPF: TStringField;
    cdsLocUsuarioID_CONTATO: TIntegerField;
    cdsLocUsuarioLOGIN: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    procedure criaOuLeArquivoConfig;
    procedure realizaConexao;
  public
    { Public declarations }
  end;

var
  DmPrincipal: TDmPrincipal;

implementation

uses
  untPrincipal;

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

procedure TDmPrincipal.criaOuLeArquivoConfig;
  var
    IniConfiguracao : TIniFile;
begin

  IniConfiguracao := TIniFile.Create(ExtractFileDir(Application.ExeName) + '\Config.ini');

  try

    if not FileExists(ExtractFileDir(Application.ExeName) + '\Config.ini') then
    begin
      IniConfiguracao.WriteString('BD', 'BANCO', FDConnection1.Params.Values['Database']);
      IniConfiguracao.WriteString('BD', 'USUARIO', FDConnection1.Params.Values['User_name']);
      IniConfiguracao.WriteString('BD', 'SENHA', FDConnection1.Params.Values['Password']);
      IniConfiguracao.WriteString('BD', 'IP', FDConnection1.Params.Values['Address']);
    end
    else
    begin
      FDConnection1.Params.Values['Database']  := IniConfiguracao.ReadString('BD','BANCO','Erro ao ler o nome do banco de dados.');
      FDConnection1.Params.Values['User_name'] := IniConfiguracao.ReadString('BD','USUARIO','Erro ao ler o usu?rio do banco de dados.');
      FDConnection1.Params.Values['Password']  := IniConfiguracao.ReadString('BD','SENHA','Erro ao ler a senha do banco de dados.');
      FDConnection1.Params.Values['Address']   := IniConfiguracao.ReadString('BD','IP','Erro ao ler o IP do banco de dados.');
    end;

  finally
    IniConfiguracao.Free;
  end;
end;

procedure TDmPrincipal.DataModuleCreate(Sender: TObject);
begin
  realizaConexao;
end;

procedure TDmPrincipal.realizaConexao;
begin

  FDConnection1.Connected := False;

  try

    criaOuLeArquivoConfig;

    FDConnection1.Connected := True;

  except

    ShowMessage('Erro ao conectar no banco de dados!');
    Application.Terminate;
  end;
end;

end.
