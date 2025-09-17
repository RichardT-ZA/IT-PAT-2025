//Richard Thiart
unit MainPage_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Samples.Spin, Vcl.ComCtrls, math, GlobalVariables_u;

type
  TfrmMainPage = class(TForm)
    sedFreeInput2: TSpinEdit;
    sedFreeInput1: TSpinEdit;
    edtFreeCalcOutput: TEdit;
    pnlFreeCalculator: TPanel;
    btnPlus: TButton;
    btnMinus: TButton;
    btnMultiply: TButton;
    btnDevide: TButton;
    redFreeClicksLeft: TRichEdit;
    pnlAdvancedCalculator: TPanel;
    edtBase: TEdit;
    edtExponent: TEdit;
    btnCalcExponents: TButton;
    redAnswers: TRichEdit;
    btnDiv: TButton;
    sedDiv1: TSpinEdit;
    sedDiv2: TSpinEdit;
    sedMod1: TSpinEdit;
    btnMod: TButton;
    sedMod2: TSpinEdit;
    edtTrig: TEdit;
    btnSine: TButton;
    btnCosine: TButton;
    btnTangent: TButton;
    symbol1: TLabel;
    redUserInfo: TRichEdit;
    redCost: TRichEdit;
    lblConversionsTitle: TLabel;
    edtConversions: TEdit;
    btnBinaryToDecimal: TButton;
    btnDecimalToBinary: TButton;
    btnHexadecimalToDecimal: TButton;
    btnDecimalToHexadecimal: TButton;
    edtLog: TEdit;
    edtLogBase: TEdit;
    lblLog: TLabel;
    lblBracket: TLabel;
    btnLog: TButton;
    procedure btnPlusClick(Sender: TObject);
    procedure btnMinusClick(Sender: TObject);
    procedure btnMultiplyClick(Sender: TObject);
    procedure btnDevideClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCalcExponentsClick(Sender: TObject);
    procedure btnDivClick(Sender: TObject);
    procedure btnModClick(Sender: TObject);
    procedure btnSineClick(Sender: TObject);
    procedure btnCosineClick(Sender: TObject);
    procedure btnTangentClick(Sender: TObject);
    procedure btnShowUserInfoClick(Sender: TObject);
    procedure btnBinaryToDecimalClick(Sender: TObject);
    procedure btnDecimalToBinaryClick(Sender: TObject);
    procedure btnHexadecimalToDecimalClick(Sender: TObject);
    procedure btnDecimalToHexadecimalClick(Sender: TObject);
    procedure btnLogClick(Sender: TObject);

  private
    { Private declarations }
    var iFreePlusUses, iFreeMinusUses, iFreeMultiplyUses, iFreeDevideUses: Integer;
        rTotalCost : Real;

    procedure RefreshFreeUses;
    procedure UpdateCost(rRate : Real; rAmount: Real);
    function Subscript(iInput: Integer) : String ;
  public
    { Public declarations }
    procedure UnlockAll;
    procedure UpdateUserInfo;
  end;

var
  frmMainPage: TfrmMainPage;

implementation

uses
  login_u, Paywall_u;   //The other 2 forms are referenced here instead of under Interface -> Uses to avoid a circular reference

{$R *.dfm}

procedure TfrmMainPage.btnCosineClick(Sender: TObject);
var rDegrees, rAnswer : Real;
begin
if bUnlocked = False then
  begin
  frmPaywall.show;
  Exit;
  end;

rDegrees := StrToFloat(edtTrig.text);

rAnswer := Cos(DegToRad(rDegrees));     //Delphi works with radians when doing trig and I want to work with degrees so DegToRad (Degrees to Radians) is needed

redAnswers.lines.add('Cos'+FloatToStr(rDegrees)+'°'+' = '+FloatToStrF(rAnswer,fffixed,8,5));

UpdateCost(CosCost,rDegrees);
end;

procedure TfrmMainPage.btnDecimalToBinaryClick(Sender: TObject);
var sInput, sBinary : String;
    iInput, iNum : Integer;
begin
if bUnlocked = False then
  begin
  frmPaywall.show;
  Exit;
  end;

sInput := edtConversions.text;

if Length(sInput) < 1 then   //Checks if there is something in the input edit box
  begin
  Showmessage('No inputs');
  edtConversions.setfocus;
  Exit;
  end;

if not TryStrToInt(sInput, iInput) then    //Checks if the input is a number
  begin
  Showmessage(sInput+' is not an integer.');
  edtConversions.setfocus;
  Exit;
  end;

sBinary := '';
iNum := iInput;
Repeat
sBinary := IntToStr( iNum mod 2 ) + sBinary;
iNum := iNum div 2;
Until iNum = 0 ;

redAnswers.lines.add(sInput+'₁₀ = '+sBinary+'₂');
UpdateCost(ConvertCost,iInput);
end;

procedure TfrmMainPage.btnDecimalToHexadecimalClick(Sender: TObject);
var sInput, sHex, sChar : String;
    iInput, iNum, iChar : Integer;
begin
if bUnlocked = False then
  begin
  frmPaywall.show;
  Exit;
  end;

sInput := edtConversions.text;

if Length(sInput) < 1 then   //Checks if there is something in the input edit box
  begin
  Showmessage('No inputs');
  edtConversions.setfocus;
  Exit;
  end;

if not TryStrToInt(sInput, iInput) then    //Checks if the input is a number
  begin
  Showmessage(sInput+' is not an integer.');
  edtConversions.setfocus;
  Exit;
  end;

sHex := '';
iNum := iInput;
Repeat
  iChar := iNum mod 16 ;
  case iChar of
  0..9 : sChar := IntToStr(iChar) ;
  10 : sChar := 'A';
  11 : sChar := 'B';
  12 : sChar := 'C';
  13 : sChar := 'D';
  14 : sChar := 'E';
  15 : sChar := 'F';
  end;

  sHex := sChar + sHex;
  iNum := iNum div 16;
Until iNum = 0 ;

redAnswers.lines.Add(sInput+'₁₀ = '+sHex+'₁₆');
end;

procedure TfrmMainPage.btnDevideClick(Sender: TObject);
var iNum1, iNum2, iDlgResponse : Integer;
    rOutput : Real;
begin
iNum1 := sedFreeInput1.value;
iNum2 := sedFreeInput2.value;

if bUnlocked = False then        //Checks if you have all features unlocked (Premium or Admin mode)         If it is unlocked, just skip this step and do the calculation
  begin
  if iFreeDevideUses < 1 then      //Checks if your free uses are up
    begin
    btnDevide.enabled := False;
    pnlFreeCalculator.color := clGray;
    iDlgResponse := MessageDlg('Consider accessing premium features.'+#13#10+'You can register for a premium account FOR FREE'+#13#10+'Sign up?',mtInformation,mbYesNo,0);
    if iDlgResponse = mrYes then
      frmPaywall.show;
    Exit;
    end;
  iFreeDevideUses := iFreeDevideUses - 1;
  RefreshFreeUses;
  end
else
  UpdateCost(DevideCost,Abs(iNum1)+Abs(iNum2));

rOutput := iNum1 / iNum2;        //Devide calculation

edtFreeCalcOutput.text := FloatToStr(rOutput);
end;

procedure TfrmMainPage.btnDivClick(Sender: TObject);
var i1, i2, iAnswer : Integer;
begin
if bUnlocked = False then
  begin
  frmPaywall.show;
  Exit;
  end;

i1 := sedDiv1.value;
i2 := sedDiv2.value;

iAnswer := i1 DIV i2;

redAnswers.lines.add(IntToStr(i1)+' DIV '+IntToStr(i2)+' = '+IntToStr(iAnswer));

UpdateCost(DivCost,i1+i2);
end;

procedure TfrmMainPage.btnHexadecimalToDecimalClick(Sender: TObject);
var sInput : String;
    i, iInput, iDeciNum, iCounter, iChar : Integer;
    bIsHex : Boolean;
begin
if bUnlocked = False then
  begin
  frmPaywall.show;
  Exit;
  end;

sInput := edtConversions.text;

if Length(sInput) < 1 then   //Checks if there is something in the input edit box
  begin
  Showmessage('No inputs');
  edtConversions.setfocus;
  Exit;
  end;

if not TryStrToInt(sInput, iInput) then    //Checks if the input is a number
  begin
  Showmessage(sInput+' is not an integer.');
  edtConversions.setfocus;
  Exit;
  end;

if Length(sInput) < 1 then   //Checks if there is something in the input edit box
  begin
  Showmessage('No inputs');
  edtConversions.setfocus;
  Exit;
  end;

bIsHex := True;
for i := 1 to Length(sInput) do      //Checks if the input is a Hex number
  begin
  if not (sInput[i] in ['0'..'9','A'..'F']) then
    bIsHex := False;
  end;
if bIsHex = False then
  begin
  Showmessage(sInput+' is not a Hexadecimal number.');
  edtConversions.SetFocus;
  Exit;
  end;

iDecinum := 0;                                                        //              4096     256     16    1
iCounter := 0;                                                        //              16^3     16^2    16^1  16^0
for i := Length(sInput) downto 1 do                                   //Example:      2        A       5     C
  begin                                                               //              2*4096   10*256  5*16  12*1                                                                      //              8192  +  2560 +  80 +  12    = 10844
    case sInput[i] of
    '0'..'9' : iChar := StrToInt(sInput[i]) ;        //Conversion
    'A' : iChar := 10 ;
    'B' : iChar := 11 ;
    'C' : iChar := 12 ;
    'D' : iChar := 13 ;
    'E' : iChar := 14 ;
    'F' : iChar := 15 ;
    end;
  iDeciNum := iChar * Trunc(Power(16,iCounter)) + iDeciNum ;
  Inc(iCounter);
  end;

redAnswers.lines.add(sInput+'₁₆ = '+IntToStr(iDeciNum)+'₁₀') ;
UpdateCost(ConvertCost,iInput)
end;

procedure TfrmMainPage.btnLogClick(Sender: TObject);
var rNum, rAnswer : Real;
    iBase : Integer;
begin
if bUnlocked = False then                          //Data validation
  begin
  frmPaywall.show;
  Exit;
  end;

if Length(edtLog.text) < 1 then
  begin
  Showmessage('No input');
  edtLog.Setfocus;
  Exit;
  end;

if Length(edtLogBase.text) < 1 then
  begin
  Showmessage('No base');
  edtLogBase.Setfocus;
  Exit;
  end;

if not tryStrToInt(edtLogBase.Text, iBase) then
  begin
  Showmessage(edtLogBase.Text+' is not a valid integer.');
  edtLogBase.SetFocus;
  Exit;
  end;

rNum := StrToFloat(edtLog.text) ;
iBase := StrToInt(edtLogBase.text) ;

rAnswer := LogN(iBase,rNum) ;

redAnswers.lines.Add('Log'+Subscript(iBase)+'('+FloatToStr(rNum)+') = '+FloatToStr(rAnswer));
end;

procedure TfrmMainPage.btnMinusClick(Sender: TObject);
var iNum1, iNum2, iOutput, iDlgResponse : Integer;
begin
iNum1 := sedFreeInput1.value;
iNum2 := sedFreeInput2.value;

if bUnlocked = False then        //Checks if you have all features unlocked (Premium or Admin mode)         If it is unlocked, just skip this step and do the calculation
  begin
  if iFreeMinusUses < 1 then      //Checks if your free uses are up
    begin
    btnMinus.enabled := False;
    pnlFreeCalculator.color := clGray;
    iDlgResponse := MessageDlg('Consider accessing premium features.'+#13#10+'You can register for a premium account FOR FREE'+#13#10+'Sign up?',mtInformation,mbYesNo,0);
    if iDlgResponse = mrYes then
      frmPaywall.show;
    Exit;
    end;
  iFreeMinusUses := iFreeMinusUses - 1;
  RefreshFreeUses;
  end
else
  UpdateCost(MinusCost,Abs(iNum1)+Abs(iNum2));

iOutput := iNum1 - iNum2;        //Minus calculation

edtFreeCalcOutput.text := IntToStr(iOutput);
end;

procedure TfrmMainPage.btnModClick(Sender: TObject);
var i1, i2, iAnswer: Integer;
begin
if bUnlocked = False then
  begin
  frmPaywall.show;
  Exit;
  end;

i1 := sedMod1.value;
i2 := sedMod2.value;

iAnswer := i1 MOD i2;

redAnswers.lines.add(IntToStr(i1)+' MOD '+IntToStr(i2)+' = '+IntToStr(iAnswer));

UpdateCost(ModCost,i1+i2);
end;

procedure TfrmMainPage.btnMultiplyClick(Sender: TObject);
var iNum1, iNum2, iOutput, iDlgResponse : Integer;
begin
iNum1 := sedFreeInput1.value;
iNum2 := sedFreeInput2.value;

if bUnlocked = False then        //Checks if you have all features unlocked (Premium or Admin mode)         If it is unlocked, just skip this step and do the calculation
  begin
  if iFreeMultiplyUses < 1 then      //Checks if your free uses are up
    begin
    btnMultiply.enabled := False;
    pnlFreeCalculator.color := clGray;
    iDlgResponse := MessageDlg('Consider accessing premium features.'+#13#10+'You can register for a premium account FOR FREE'+#13#10+'Sign up?',mtInformation,mbYesNo,0);
    if iDlgResponse = mrYes then
      frmPaywall.show;
    Exit;
    end;
  iFreeMultiplyUses := iFreeMultiplyUses - 1;
  RefreshFreeUses;
  end
else
  UpdateCost(MultiplyCost,Abs(iNum1)+Abs(iNum2));

iOutput := iNum1 * iNum2;        //Multiply calculation

edtFreeCalcOutput.text := IntToStr(iOutput);
end;

procedure TfrmMainPage.btnPlusClick(Sender: TObject);
var iNum1, iNum2, iOutput, iDlgResponse : Integer;
begin
iNum1 := sedFreeInput1.value;
iNum2 := sedFreeInput2.value;


if bUnlocked = False then        //Checks if you have all features unlocked (Premium or Admin mode)         If it is unlocked, just skip this step and do the calculation
  begin
  if iFreePlusUses < 1 then      //Checks if your free uses are up
    begin
    btnPlus.enabled := False;
    pnlFreeCalculator.color := clGray;
    iDlgResponse := MessageDlg('Consider accessing premium features.'+#13#10+'You can register for a premium account FOR FREE'+#13#10+'Sign up?',mtInformation,mbYesNo,0);
    if iDlgResponse = mrYes then
      frmPaywall.show;
    Exit;
    end;
  iFreePlusUses := iFreePlusUses - 1;
  RefreshFreeUses;
  end
else
  UpdateCost(PlusCost,Abs(iNum1)+Abs(iNum2));

iOutput := iNum1 + iNum2;

edtFreeCalcOutput.text := IntToStr(iOutput);
end;

procedure TfrmMainPage.btnShowUserInfoClick(Sender: TObject);
var sInfo, sVersion : String;
begin
if sUserType = 'User' then
  begin
  if bUnlocked then
    begin
    sVersion := 'Version:'+#9+'Premium';
    end
  else
    sVersion := 'Version:'+#9+'Free';
  end;

sInfo := 'Username:'+#9+sUsername+#13#10+
         'Type:    '+#9+sUserType+#13#10+
         sVersion;

redUserInfo.clear;
redUserInfo.lines.add(sInfo);

end;

procedure TfrmMainPage.btnSineClick(Sender: TObject);
var rDegrees, rAnswer : Real;
begin
if bUnlocked = False then
  begin
  frmPaywall.show;
  Exit;
  end;

rDegrees := StrToFloat(edtTrig.text);

rAnswer := Sin(DegToRad(rDegrees));     //Delphi works with radians when doing trig and I want to work with degrees so DegToRad (Degrees to Radians) is needed

redAnswers.lines.add('Sin'+FloatToStr(rDegrees)+'°'+' = '+FloatToStrF(rAnswer,fffixed,8,5));

UpdateCost(SinCost,rDegrees);
end;

procedure TfrmMainPage.btnTangentClick(Sender: TObject);
var rDegrees, rAnswer : Real;
    sAnswer : String;
begin
if bUnlocked = False then
  begin
  frmPaywall.show;
  Exit;
  end;

rDegrees := StrToFloat(edtTrig.text);

rAnswer := Tan(DegToRad(rDegrees));     //Delphi works with radians when doing trig and I want to work with degrees so DegToRad (Degrees to Radians) is needed
if (rAnswer > 9000000) or (rAnswer < -9000000) then
  sAnswer := 'Error'
else
  sAnswer := FloatToStrF(rAnswer,fffixed,8,5);

redAnswers.lines.add('Tan'+FloatToStr(rDegrees)+'°'+' = '+sAnswer);

UpdateCost(TanCost,rDegrees);
end;

procedure TfrmMainPage.UnlockAll;
begin
bUnlocked := True;

pnlFreeCalculator.color := clGreen;
btnPlus.Enabled := True;
btnMinus.Enabled := True;
btnMultiply.Enabled := True;
btnPlus.Enabled := True;

pnlAdvancedCalculator.color := clGreen;
edtBase.Enabled := True;
edtExponent.Enabled := True;
edtLog.Enabled := True;
edtLogBase.Enabled := True;
edtTrig.Enabled := True;
sedDiv1.Enabled := True;
sedDiv2.Enabled := True;
sedMod1.Enabled := True;
sedMod2.Enabled := True;
redAnswers.Enabled := True;
end;

procedure TfrmMainPage.UpdateCost;
var rTotal, rCost : Real;
    sNewEntry, sNewTotal : String;
begin                                   /////////////////////////////////////////////// Cost procedure
rCost := Abs(rRate*rAmount);
rTotalCost := rTotalCost + rCost;
sNewEntry := FloatToStr(rRate)+'×'+FloatToStr(rAmount)+' ='+#9+FloatToStr(rCost);
sNewTotal := 'Total: '+FloatToStrF(rTotalCost,ffCurrency,8,2);

redCost.lines.Delete(redCost.lines.count-1);
redCost.lines.Delete(redCost.lines.count-1);

redCost.lines.Add(sNewEntry);
redCost.lines.Add('------------');
redCost.lines.Add(sNewTotal);
end;

procedure TfrmMainPage.UpdateUserInfo;
var sInfo, sVersion : String;
begin
if sUserType = 'User' then
  begin
  if bUnlocked then
    begin
    sVersion := 'Version: '+'Premium';
    end
  else
    sVersion := 'Version: '+'Free';
  end;

sInfo := 'Username: '+sUsername+#13#10+
         'Type:     '+sUserType+#13#10+
         sVersion;

redUserInfo.clear;
redUserInfo.lines.add(sInfo);
end;

procedure TfrmMainPage.btnBinaryToDecimalClick(Sender: TObject);
var sInput : String;
    iInput, i, iCounter, iDecimal, iChar : Integer;
    bIsBinary : Boolean;
begin
if bUnlocked = False then
  begin
  frmPaywall.show;
  Exit;
  end;

sInput := edtConversions.text;
                                             /////Data validation///////
if Length(sInput) < 1 then   //Checks if there is something in the input edit box
  begin
  Showmessage('No inputs');
  edtConversions.setfocus;
  Exit;
  end;

if not TryStrToInt(sInput, iInput) then    //Checks if the input is a number
  begin
  Showmessage(sInput+' is not an integer.');
  edtConversions.setfocus;
  Exit;
  end;

bIsBinary := True;
for i := 1 to Length(sInput) do            //Checks if the input is a binary number
  begin
  if not (sInput[i] in ['0','1']) then
    bIsBinary := False;
  end;
if bIsBinary = False then
  begin
  Showmessage(sInput+' is not a binary number.');
  edtConversions.SetFocus;
  Exit;
  end;

iCounter := 0;
iDecimal := 0;                                                  //           16  8   4   2   1
for i := length(sInput) downto 1 do                             //           2^4 2^3 2^2 2^1 2^0
  begin                                                         // Example:  1   1   0   1   1
  iChar := StrToInt(sInput[i]);                                 //           16+ 8 + 0 + 2 + 1 = 27
  case sInput[i] of
  '0' : iDecimal := iDecimal + 0;                                  //This line is redundant but I'm keeping it to serve as a simpler version of the Hexadecimal conversions which will have a similar structure
  '1' : iDecimal := iDecimal + iChar * Trunc(Power(2,iCounter)) ;  //iChar is also redundant since it will always be 1 here. You are just multiplying by 1 but I am keeping it like this for the structure
  end;
  Inc(iCounter);
  end;
redAnswers.lines.add(sInput+'₂ = '+IntToStr(iDecimal)+'₁₀');

UpdateCost(ConvertCost,iDecimal);  //How much you pay for doing this calculation
end;

procedure TfrmMainPage.btnCalcExponentsClick(Sender: TObject);
var rBase, rExponent, rAnswer: Real;
begin
if bUnlocked = False then
  begin
  frmPaywall.show;
  Exit;
  end;

rBase := StrToFloat(edtBase.text);
rExponent := StrToFloat(edtExponent.text);

rAnswer := Power(rBase,rExponent);

redAnswers.lines.add(FloatToStr(rBase)+'^'+ FloatToStr(rExponent)+' = ' + FloatToStrF(rAnswer,fffixed,8,2));

UpdateCost(ExponentCost,rBase+rExponent);     //See price rates @ GlobalVariables_u
end;

procedure TfrmMainPage.FormCreate(Sender: TObject);
begin
iFreePlusUses := 3;
iFreeMinusUses := 3;
iFreeMultiplyUses := 2;
iFreeDevideUses := 2;
redFreeClicksLeft.paragraph.tabCount := 1;
redFreeClicksLeft.Paragraph.Tab[0] := 50;   //This controls the position of the tab stop. If the tab stop is not placed far enough then the numbers will not be aligned
RefreshFreeUses;

redUserInfo.Paragraph.tabCount := 1;
redUserInfo.Paragraph.Tab[0] := 50;

rTotalCost := 0;
end;

procedure TfrmMainPage.RefreshFreeUses;
begin
redFreeClicksLeft.clear;
redFreeClicksLeft.lines.add('Remaining free button uses:'+#13#10+
                            #13#10+
                            'Plus +'+#9+IntToStr(iFreePlusUses)+#13#10+
                            'Minus -'+#9+IntToStr(iFreeMinusUses)+#13#10+
                            'Multiply x'+#9+IntToStr(iFreeMultiplyUses)+#13#10+
                            'Devide /'+#9+IntToStr(iFreeDevideUses));
end;

function TfrmMainPage.Subscript(iInput: Integer): String;
var iChar, i : Integer;
    sInput : String;
    cChar : Char;
begin
sInput := IntToStr(iInput);
result := '';

for i := 1 to Length(sInput) do
  begin
    iChar := StrToInt(sInput[i]) ;
    case iChar of
    0 : cChar := '₀';
    1 : cChar := '₁';
    2 : cChar := '₂';
    3 : cChar := '₃';
    4 : cChar := '₄';
    5 : cChar := '₅';
    6 : cChar := '₆';
    7 : cChar := '₇';
    8 : cChar := '₈';
    9 : cChar := '₉';
    end;
  result := result + cChar ;
  end;

end;

end.
