unit Paywall_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.WinXCalendars, GlobalVariables_u, MainPage_u,
  Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TfrmPaywall = class(TForm)
    edtCardNumber: TEdit;
    btnAccept: TButton;
    cmbCardType: TComboBox;
    lblCardNumber: TLabel;
    lblExpirationDate: TLabel;
    calExpirationDate: TCalendarPicker;
    lblSecurityCode: TLabel;
    edtSecurityCode: TEdit;
    btnBypassPaywall: TButton;
    shpBackground: TShape;
    lblScroll: TLabel;
    shpCutoff: TShape;
    tmrTitelScroll: TTimer;
    redTerms: TRichEdit;
    lblPremium: TLabel;
    tmrPremiumFlash: TTimer;
    procedure btnAcceptClick(Sender: TObject);
    procedure btnBypassPaywallClick(Sender: TObject);
    procedure tmrTitelScrollTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tmrPremiumFlashTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    var sCostRates : String;
  end;

var
  frmPaywall: TfrmPaywall;

implementation

uses
  login_u; //login_u is referenced here instead of under Interface > Uses to avoid a circular reference

{$R *.dfm}

procedure TfrmPaywall.btnAcceptClick(Sender: TObject);
var sCardNumber, sSecurityCode : String;
    bTry: Boolean;
    iInt: Int64;        //iInt is never used. I only need TryStrToInt to test if sCardNumber is a number.
begin
sCardNumber := edtCardNumber.text;
sSecurityCode := edtSecurityCode.text;
                                            //Data validation:
if not ( (Length(sCardNumber) >= 15) and (Length(sCardNumber) <= 19) and TryStrToInt64(sCardNumber, iInt) ) then    //TryStrToInt() cannot handle integers this large so I have to use TryStrToInt64 and define iCard as Int64.
  begin
  Showmessage('Invalid Card number'+#13#10+'(Must be between 15 and 19 digits long)');
  edtCardNumber.setfocus;
  Exit
  end;

if Length(cmbCardType.text) < 1 then
  begin
  Showmessage('Select a Card Type');
  cmbCardType.setfocus;
  Exit;
  end;

if calExpirationDate.IsEmpty then
  begin
  Showmessage('Pick an expiration date');
  calExpirationDate.setfocus;
  Exit;
  end;

if (Length(sSecurityCode) <> 3) or not TryStrToInt64(sSecurityCode, iInt) then  // It needs to be TryStrToInt64 because the regular TryStrToInt cannot handle such large numbers
  begin
  Showmessage('Invalid security code'+#13#10+'(Must be a 3 digit number)');
  edtSecurityCode.setfocus;
  Exit;
  end;

Messagedlg('Sorry, we could not find your card :/',TMsgDlgType.mtInformation, [mbOK], 0);
btnBypassPaywall.visible := True;
end;

procedure TfrmPaywall.btnBypassPaywallClick(Sender: TObject);
var sPasswordInput : String;
begin
sPasswordInput := Inputbox('Bypass Paywall','Enter the Admin Password to bypass','');

if sPasswordInput = AdminPassword then
  begin
  sUserType := 'Premium';
  frmMainPage.show;
  frmPaywall.hide;
  frmLogin.hide;     //Login_u needs to be under Uses for this line to work.

  frmMainPage.UnlockAll; //Remember to type "frmMainPage.UnlockAll;" and not just "UnlockAll;" because the procedure is declared in MainPage_u
  Showmessage('Welcome! You have full access to our PREMIUM Calculator service. All payments will be charged to your card automatically.'+#13#10#10+'(If you are an Admin or if you bypassed the Paywall screen you will be using fake money)');
  frmMainPage.UpdateUserInfo;
  end
else
  Showmessage('Incorrect Password');
end;

procedure TfrmPaywall.FormCreate(Sender: TObject);
begin
sCostRates := 'COST RATES:'+#13#10+
              'Plus '+FloatToStr(PlusCost)+#13#10+
              'Minus '+FloatToStr(MinusCost)+#13#10+
              'Multiply '+FloatToStr(MultiplyCost)+#13#10+
              'Devide '+FloatToStr(DivideCost)+#13#10+
              'Exponent '+FloatToStr(ExponentCost)+#13#10+
              'Log '+FloatToStr(LogCost)+#13#10+
              'Div '+FloatToStr(DivCost)+#13#10+
              'Mod '+FloatToStr(ModCost)+#13#10+
              'Sin '+FloatToStr(SinCost)+#13#10+
              'Cos '+FloatToStr(CosCost)+#13#10+
              'Tan '+FloatToStr(TanCost)+#13#10+
              'Number Conversions '+FloatToStr(ConvertCost) ;

redTerms.Lines.Add(#13#10+sCostRates);
end;

procedure TfrmPaywall.tmrPremiumFlashTimer(Sender: TObject);
begin
if lblPremium.font.Color = clWhite then
  lblPremium.font.color := clBlack
else
  lblPremium.font.color := clWhite;
end;

procedure TfrmPaywall.tmrTitelScrollTimer(Sender: TObject);
begin
if lblScroll.left > -140 then
  lblScroll.Left := lblScroll.left -20
else
  begin
  lblScroll.Left := 500;
  Refresh;
  end;
end;

end.
