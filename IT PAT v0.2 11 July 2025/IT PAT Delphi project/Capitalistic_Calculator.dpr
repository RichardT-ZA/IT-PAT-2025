program Capitalistic_Calculator;

uses
  Vcl.Forms,
  Login_u in 'Login_u.pas' {frmLogin},
  Paywall_u in 'Paywall_u.pas' {frmPaywall},
  MainPage_u in 'MainPage_u.pas' {frmMainPage},
  GlobalVariables_u in 'GlobalVariables_u.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TfrmPaywall, frmPaywall);
  Application.CreateForm(TfrmMainPage, frmMainPage);
  Application.Run;
end.
