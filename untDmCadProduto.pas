unit untDmCadProduto;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TdmCadProduto = class(TDataModule)
    tbCadProduto: TFDTable;
    tbCadProdutoID_PRODUTO: TFDAutoIncField;
    tbCadProdutoDESCRICAO: TStringField;
    tbCadProdutoUNIDADE: TStringField;
    tbCadProdutoPRECO_VENDA: TCurrencyField;
    tbCadProdutoPRECO_CUSTO: TCurrencyField;
    tbCadProdutoQTDE_ESTOQUE: TIntegerField;
    tbCadProdutoNCM: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmCadProduto: TdmCadProduto;

implementation

uses
  untDmPrincipal;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdmCadProduto.DataModuleCreate(Sender: TObject);
begin
  tbCadProduto.Close;
  tbCadProduto.Open();
end;

end.
