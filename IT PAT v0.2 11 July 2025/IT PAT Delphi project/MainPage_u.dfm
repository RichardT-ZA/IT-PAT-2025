object frmMainPage: TfrmMainPage
  Left = 449
  Top = 0
  Caption = 'Capitalistic Calculator'
  ClientHeight = 810
  ClientWidth = 1091
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  OnCreate = FormCreate
  TextHeight = 15
  object pnlBetaFreeCalculator: TPanel
    Left = 927
    Top = 154
    Width = 154
    Height = 205
    Caption = 'Free calculator'
    Color = clSeagreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    VerticalAlignment = taAlignTop
    object edtBetaFreeCalcOutput: TEdit
      Left = 16
      Top = 126
      Width = 121
      Height = 23
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object sedBetaFreeInput2: TSpinEdit
      Left = 80
      Top = 32
      Width = 57
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      MaxValue = 100
      MinValue = 0
      ParentFont = False
      TabOrder = 1
      Value = 5
    end
    object sedBetaFreeInput1: TSpinEdit
      Left = 17
      Top = 32
      Width = 57
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      MaxValue = 100
      MinValue = 0
      ParentFont = False
      TabOrder = 2
      Value = 10
    end
    object btnBetaPlus: TButton
      Left = 24
      Top = 64
      Width = 49
      Height = 25
      Caption = '+'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btnBetaPlusClick
    end
    object btnBetaMinus: TButton
      Left = 79
      Top = 64
      Width = 49
      Height = 25
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = btnBetaMinusClick
    end
    object btnBetaMultiply: TButton
      Left = 24
      Top = 95
      Width = 49
      Height = 25
      Caption = 'x'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = btnBetaMultiplyClick
    end
    object btnBetaDivide: TButton
      Left = 79
      Top = 95
      Width = 49
      Height = 25
      Caption = '/'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = btnBetaDivideClick
    end
  end
  object redFreeClicksLeft: TRichEdit
    Left = 8
    Top = 80
    Width = 183
    Height = 89
    TabStop = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
  end
  object pnlAdvancedCalculator: TPanel
    Left = 212
    Top = 8
    Width = 413
    Height = 449
    Caption = 'Advanced Calculator '
    Color = clGray
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    VerticalAlignment = taAlignTop
    object lblConversionsTitle: TLabel
      Left = 25
      Top = 241
      Width = 116
      Height = 16
      Caption = 'Number conversions'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsUnderline]
      ParentFont = False
    end
    object symbol1: TLabel
      Left = 77
      Top = 190
      Width = 6
      Height = 20
      Caption = #176
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblLog: TLabel
      Left = 25
      Top = 81
      Width = 30
      Height = 23
      Caption = 'Log'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblBracket: TLabel
      Left = 87
      Top = 81
      Width = 7
      Height = 23
      Caption = '('
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edtTrig: TEdit
      Left = 25
      Top = 197
      Width = 53
      Height = 23
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      Text = '90'
    end
    object edtBase: TEdit
      Left = 72
      Top = 41
      Width = 68
      Height = 23
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TextHint = 'Base'
    end
    object edtExponent: TEdit
      Left = 129
      Top = 25
      Width = 32
      Height = 23
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TextHint = 'Exp'
    end
    object btnCalcExponents: TButton
      Left = 169
      Top = 43
      Width = 33
      Height = 25
      Caption = '='
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btnCalcExponentsClick
    end
    object redAnswers: TRichEdit
      Left = 224
      Top = 24
      Width = 169
      Height = 407
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      Lines.Strings = (
        'Answers:')
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssBoth
      TabOrder = 3
    end
    object btnDiv: TButton
      Left = 90
      Top = 128
      Width = 47
      Height = 25
      Caption = 'DIV'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = btnDivClick
    end
    object sedDiv1: TSpinEdit
      Left = 25
      Top = 128
      Width = 59
      Height = 24
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      MaxValue = 0
      MinValue = 0
      ParentFont = False
      TabOrder = 5
      Value = 11
    end
    object sedDiv2: TSpinEdit
      Left = 143
      Top = 128
      Width = 59
      Height = 24
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      MaxValue = 0
      MinValue = 0
      ParentFont = False
      TabOrder = 6
      Value = 2
    end
    object sedMod1: TSpinEdit
      Left = 25
      Top = 159
      Width = 59
      Height = 24
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      MaxValue = 0
      MinValue = 0
      ParentFont = False
      TabOrder = 7
      Value = 11
    end
    object btnMod: TButton
      Left = 90
      Top = 159
      Width = 47
      Height = 25
      Caption = 'MOD'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = btnModClick
    end
    object sedMod2: TSpinEdit
      Left = 143
      Top = 159
      Width = 59
      Height = 24
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      MaxValue = 0
      MinValue = 0
      ParentFont = False
      TabOrder = 9
      Value = 2
    end
    object btnSine: TButton
      Left = 95
      Top = 196
      Width = 32
      Height = 25
      Caption = 'sin'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      OnClick = btnSineClick
    end
    object btnCosine: TButton
      Left = 133
      Top = 196
      Width = 32
      Height = 25
      Caption = 'cos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
      OnClick = btnCosineClick
    end
    object btnTangent: TButton
      Left = 171
      Top = 196
      Width = 32
      Height = 25
      Caption = 'tan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
      OnClick = btnTangentClick
    end
    object edtConversions: TEdit
      Left = 25
      Top = 263
      Width = 161
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
    end
    object btnBinaryToDecimal: TButton
      Left = 25
      Top = 302
      Width = 161
      Height = 25
      Caption = 'Binary to Decimal'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
      OnClick = btnBinaryToDecimalClick
    end
    object btnDecimalToBinary: TButton
      Left = 25
      Top = 333
      Width = 161
      Height = 25
      Caption = 'Decimal to Binary'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 16
      OnClick = btnDecimalToBinaryClick
    end
    object btnHexadecimalToDecimal: TButton
      Left = 26
      Top = 374
      Width = 160
      Height = 25
      Caption = 'Hexadecimal to Decimal'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 17
      OnClick = btnHexadecimalToDecimalClick
    end
    object btnDecimalToHexadecimal: TButton
      Left = 25
      Top = 405
      Width = 161
      Height = 25
      Caption = 'Decimal to Hexadecimal'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 18
      OnClick = btnDecimalToHexadecimalClick
    end
    object edtLog: TEdit
      Left = 95
      Top = 81
      Width = 66
      Height = 23
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 19
    end
    object edtLogBase: TEdit
      Left = 56
      Top = 93
      Width = 33
      Height = 23
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 20
      Text = '10'
      TextHint = 'Base'
    end
    object btnLog: TButton
      Left = 169
      Top = 82
      Width = 33
      Height = 25
      Caption = '='
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 21
      OnClick = btnLogClick
    end
  end
  object redUserInfo: TRichEdit
    Left = 8
    Top = 8
    Width = 183
    Height = 66
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Lines.Strings = (
      'User Info:')
    ParentFont = False
    TabOrder = 3
  end
  object redCost: TRichEdit
    Left = 645
    Top = 8
    Width = 276
    Height = 449
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Lines.Strings = (
      'Spending:'
      '------------------------------------------------------'
      'Total:')
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 4
  end
  object pnlInvest: TPanel
    Left = 8
    Top = 471
    Width = 913
    Height = 334
    Caption = 'Investment calculator'
    Color = clAqua
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 5
    VerticalAlignment = taAlignTop
    object lblInterestRateTitle: TLabel
      Left = 792
      Top = 65
      Width = 92
      Height = 19
      Caption = 'Interest rate:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblPercent: TLabel
      Left = 851
      Top = 86
      Width = 19
      Height = 23
      Caption = '%'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object chartInvest: TChart
      Left = 24
      Top = 22
      Width = 753
      Height = 293
      Title.Text.Strings = (
        'Your investment:')
      BottomAxis.Automatic = False
      BottomAxis.AutomaticMaximum = False
      BottomAxis.ExactDateTime = False
      BottomAxis.Increment = 1.000000000000000000
      BottomAxis.LabelsSeparation = 0
      BottomAxis.Maximum = 25.000000000000000000
      BottomAxis.Title.Caption = 'Years'
      LeftAxis.Title.Caption = 'Worth'
      View3D = False
      TabOrder = 0
      DefaultCanvas = 'TGDIPlusCanvas'
      ColorPaletteIndex = 13
      object Series1: TLineSeries
        HoverElement = [heCurrent]
        Title = 'Total worth'
        Brush.BackColor = clDefault
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        XValues.Name = 'X'
        XValues.Order = loAscending
        YValues.Name = 'Y'
        YValues.Order = loNone
      end
    end
    object btnInvest: TButton
      Left = 792
      Top = 22
      Width = 81
      Height = 33
      Caption = 'Invest!'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btnInvestClick
    end
    object edtInterestRate: TEdit
      Left = 792
      Top = 86
      Width = 57
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Text = '10.5'
    end
  end
  object Panel1: TPanel
    Left = 8
    Top = 175
    Width = 185
    Height = 282
    Caption = 'Basic Calculator'
    Color = clLightgreen
    ParentBackground = False
    TabOrder = 6
    VerticalAlignment = taAlignTop
    object shpBasicCalculatorFormulaBackground: TShape
      Left = 16
      Top = 25
      Width = 153
      Height = 40
    end
    object lblBasicFormula: TLabel
      Left = 24
      Top = 35
      Width = 110
      Height = 21
      Caption = 'lblBasicFormula'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object btn1: TButton
      Left = 16
      Top = 166
      Width = 33
      Height = 33
      Caption = '1'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Monoid'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btn1Click
    end
    object btn2: TButton
      Left = 55
      Top = 166
      Width = 33
      Height = 33
      Caption = '2'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Monoid'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btn2Click
    end
    object btn3: TButton
      Left = 94
      Top = 166
      Width = 33
      Height = 33
      Caption = '3'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Monoid'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btn3Click
    end
    object btn4: TButton
      Left = 16
      Top = 127
      Width = 33
      Height = 33
      Caption = '4'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Monoid'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btn4Click
    end
    object btn5: TButton
      Left = 55
      Top = 127
      Width = 33
      Height = 33
      Caption = '5'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Monoid'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = btn5Click
    end
    object btn6: TButton
      Left = 94
      Top = 127
      Width = 33
      Height = 33
      Caption = '6'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Monoid'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = btn6Click
    end
    object btn7: TButton
      Left = 16
      Top = 88
      Width = 33
      Height = 33
      Caption = '7'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Monoid'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = btn7Click
    end
    object btn8: TButton
      Left = 55
      Top = 88
      Width = 33
      Height = 33
      Caption = '8'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Monoid'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = btn8Click
    end
    object btn9: TButton
      Left = 94
      Top = 88
      Width = 33
      Height = 33
      Caption = '9'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Monoid'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = btn9Click
    end
    object btn0: TButton
      Left = 55
      Top = 205
      Width = 33
      Height = 33
      Caption = '0'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Monoid'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      OnClick = btn0Click
    end
    object btnEquals: TButton
      Left = 94
      Top = 205
      Width = 33
      Height = 33
      Caption = '='
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Monoid'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      OnClick = btnEqualsClick
    end
    object btnPlus: TButton
      Left = 133
      Top = 88
      Width = 33
      Height = 33
      Caption = '+'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Monoid'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      OnClick = btnPlusClick
    end
    object btnMinus: TButton
      Left = 133
      Top = 127
      Width = 33
      Height = 33
      Caption = '-'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Monoid'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
      OnClick = btnMinusClick
    end
    object btnMultiply: TButton
      Left = 133
      Top = 166
      Width = 33
      Height = 33
      Caption = 'x'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Monoid'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
      OnClick = btnMultiplyClick
    end
    object btnDivide: TButton
      Left = 133
      Top = 205
      Width = 33
      Height = 33
      Caption = #247
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Monoid'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
      OnClick = btnDivideClick
    end
    object btnBasicClear: TButton
      Left = 16
      Top = 205
      Width = 33
      Height = 33
      Caption = 'CE'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Monoid'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
      OnClick = btnBasicClearClick
    end
  end
  object tmrAdvertisePremium: TTimer
    Enabled = False
    OnTimer = tmrAdvertisePremiumTimer
    Left = 116
    Top = 464
  end
end
