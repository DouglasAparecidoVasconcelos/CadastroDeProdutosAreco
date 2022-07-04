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

procedure TDmPrincipal.DataModuleCreate(Sender: TObject);
begin

  FDConnection1.Connected := False;

  // FDConnection1.DriverName := 'MSSQL';
  // FDConnection1.Params.Values['DriverID'] := 'MSSQL';
  FDConnection1.Params.Values['HostName'] := 'localhost\SQLEXPRESS';
  FDConnection1.Params.Values['Database'] := 'DBDELPHI-PROTOTIPO';

  try
    FDConnection1.Connected := True;
  except
    ShowMessage('Erro ao conectar no banco de dados!');
  end;
end;

end.
