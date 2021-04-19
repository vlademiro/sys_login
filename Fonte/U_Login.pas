unit U_Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.jpeg,
  Vcl.Imaging.pngimage, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmLogin = class(TForm)
    Panel1: TPanel;
    imgFundo: TImage;
    Panel2: TPanel;
    imgLogin: TImage;
    btnLogin: TBitBtn;
    edtNome: TEdit;
    edtSenha: TEdit;
    procedure btnLoginClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure login;
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

uses U_Principal;

{ TfrmLogin }

procedure TfrmLogin.btnLoginClick(Sender: TObject);
begin
  if Trim(edtNome.Text) = '' then
    begin
      MessageDlg('Informe o usuário',mtError,[mbOK],0);
      edtNome.SetFocus;
      exit;
    end;

   if Trim(edtSenha.Text) = '' then
    begin
      MessageDlg('Informe a senha',mtError,[mbOK],0);
      edtSenha.SetFocus;
      exit;
    end;

    login;
end;

procedure TfrmLogin.FormActivate(Sender: TObject);
begin
    edtNome.SetFocus;
end;

procedure TfrmLogin.login;
begin

  frmPrincipal.ShowModal;
  frmLogin.Close;
  frmLogin.Free;
  frmLogin := nil;

end;

end.
