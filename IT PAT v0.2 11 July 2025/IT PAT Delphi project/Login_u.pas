//Richard Thiart
unit Login_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Paywall_u, MainPage_u, GlobalVariables_u;

type
  TfrmLogin = class(TForm)
    edtUsername: TEdit;
    lblUsername: TLabel;
    cmbUserType: TComboBox;
    edtAdminPassword: TEdit;
    btnLogIn: TButton;
    lblAdminPassword: TLabel;
    chxPremium: TCheckBox;
    procedure cmbUserTypeChange(Sender: TObject);
    procedure btnLogInClick(Sender: TObject);
    procedure btnBypassPaywallClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtUsernameChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

procedure TfrmLogin.btnBypassPaywallClick(Sender: TObject);
begin
frmMainPage.show;
end;

procedure TfrmLogin.btnLogInClick(Sender: TObject);
begin
if Length(edtUsername.text) < 1 then
  begin
  Showmessage('Enter a username');
  edtUsername.setfocus;
  Exit;
  end;

if sUserType = 'Admin' then
  begin
  if edtAdminPassword.text = AdminPassword then
    begin
    frmMainpage.UnlockAll;       //Remember to type "frmMainPage.UnlockAll;" and not just "UnlockAll;" because the procedure is declared in MainPage_u
    frmMainPage.show;
    frmMainPage.UpdateUserInfo;  //UpdateUserInfo is also a procedure I declared in frmMainPage
    frmMainPage.btnBasicClearClick(frmMainPage.btnBasicClear);     //Disables the basic calculator plus, minus, multiply and divide buttons on startup
    frmLogin.hide;
    Exit;
    end
  else
    begin
    ShowMessage('Incorrect Password');
    edtAdminPassword.setfocus;
    Exit;
    end;
  end;

if sUserType = 'User' then
  begin
  if chxPremium.checked then
    begin
    frmPaywall.tmrTitelScroll.Enabled := True;
    frmPaywall.tmrPremiumFlash.Enabled := True;
    frmPaywall.ShowModal;
    Exit;
    end
  else
    begin
    frmMainPage.show;
    frmMainPage.UpdateUserInfo;
    frmMainPage.btnBasicClearClick(frmMainPage.btnBasicClear);   //Disables the basic calculator plus, minus, multiply and divide buttons on startup
    frmLogin.hide;
    Exit;
    end;
  end;

end;

procedure TfrmLogin.cmbUserTypeChange(Sender: TObject);
begin
case cmbUserType.itemindex of
0 : begin
    edtAdminPassword.visible := False;
    lblAdminPassword.visible := False;
    chxPremium.visible := True;
    sUserType := 'User';
    bUnlocked := False;
    end;

1 : begin
    edtAdminPassword.visible := True;
    lblAdminPassword.visible := True;
    chxPremium.visible := False;
    sUserType := 'Admin';
    end;
end;
btnLogin.visible := True;
end;

procedure TfrmLogin.edtUsernameChange(Sender: TObject);
begin
sUsername := edtUsername.text;
end;

procedure TfrmLogin.FormCreate(Sender: TObject);
begin
bUnlocked := False;
end;

end.
