unit untDmcadUsuario;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TdmCadUsuario = class(TDataModule)
    tbCadUsuario: TFDTable;
    tbCadUsuarioID_USUARIO: TFDAutoIncField;
    tbCadUsuarioNOME_COMPLETO: TStringField;
    tbCadUsuarioDATA_NASC: TDateField;
    tbCadUsuarioCPF: TStringField;
    tbCadUsuarioID_CONTATO: TIntegerField;
    tbCadUsuarioLOGIN: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmCadUsuario: TdmCadUsuario;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdmCadUsuario.DataModuleCreate(Sender: TObject);
begin
  tbCadUsuario.Close;
  tbCadUsuario.Open();
end;

end.
