program Sys_Login;

uses
  Vcl.Forms,
  U_Login in '..\Fonte\U_Login.pas' {frmLogin},
  U_Principal in '..\Fonte\U_Principal.pas' {frmPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
