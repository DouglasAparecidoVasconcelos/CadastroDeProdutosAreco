unit untCadProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Mask;

type
  TfrmCadProduto = class(TForm)
    dsProduto: TDataSource;
    GroupBox1: TGroupBox;
    DBNavigator1: TDBNavigator;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    dbCodigo: TDBEdit;
    Label3: TLabel;
    dbDescricao: TDBEdit;
    label9: TLabel;
    Label2: TLabel;
    dbPrecoCusto: TDBEdit;
    Label5: TLabel;
    dbPrecoVenda: TDBEdit;
    Label6: TLabel;
    dbQtedeEstoque: TDBEdit;
    Label7: TLabel;
    dbNcm: TDBEdit;
    dbCmbUnidade: TDBComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadProduto: TfrmCadProduto;

implementation

uses
  untDmCadProduto;

{$R *.dfm}

end.
