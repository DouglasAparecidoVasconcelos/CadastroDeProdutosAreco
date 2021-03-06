unit untLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TfrmLogin = class(TForm)
    grplogin: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    editUser: TEdit;
    editSenha: TEdit;
    btnLogin: TButton;
    Image1: TImage;
    Button1: TButton;
    DBCheckBox1: TDBCheckBox;
    procedure btnLoginClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure editUserKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure editSenhaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    function realizaLogin: Boolean;
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

uses
  untDmPrincipal;

{$R *.dfm}

function TfrmLogin.realizaLogin(): Boolean;
begin
  if DmPrincipal.cdsLocUsuario.Locate('LOGIN', Trim(editUser.Text), []) then
  begin
    if DmPrincipal.cdsLocUsuarioCPF.AsString = Trim(editSenha.Text) then
    begin
      Result := True;
    end
    else
    begin
      ShowMessage('Senha Incorreta! Tente novamente.');
      Result := False;
    end;
  end
  else
  begin
    ShowMessage('Usu?rio Incorreto.');
    Result := False;
  end;

end;

procedure TfrmLogin.btnLoginClick(Sender: TObject);
begin
  if realizaLogin then
  begin
    frmLogin.Close;
  end
  else
  begin
    editUser.SetFocus;
  end;

end;

procedure TfrmLogin.Button1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmLogin.editSenhaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
    btnLogin.SetFocus;
end;

procedure TfrmLogin.editUserKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
    editSenha.SetFocus;
end;

procedure TfrmLogin.FormCreate(Sender: TObject);
begin
  if DmPrincipal = nil then
    DmPrincipal := TDmPrincipal.Create(Self);
end;

procedure TfrmLogin.FormShow(Sender: TObject);
begin
  DmPrincipal.cdsLocUsuario.Close;
  DmPrincipal.cdsLocUsuario.Open;
end;

end.
