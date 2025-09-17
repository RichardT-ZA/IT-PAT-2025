object frmMainPage: TfrmMainPage
  Left = 470
  Top = 0
  Caption = 'Capitalistic Calculator'
  ClientHeight = 819
  ClientWidth = 994
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  OnCreate = FormCreate
  TextHeight = 15
  object pnlFreeCalculator: TPanel
    Left = 16
    Top = 16
    Width = 185
    Height = 177
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
    object edtFreeCalcOutput: TEdit
      Left = 24
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
    object sedFreeInput2: TSpinEdit
      Left = 88
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
    object sedFreeInput1: TSpinEdit
      Left = 25
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
    object btnPlus: TButton
      Left = 32
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
      OnClick = btnPlusClick
    end
    object btnMinus: TButton
      Left = 87
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
      OnClick = btnMinusClick
    end
    object btnMultiply: TButton
      Left = 32
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
      OnClick = btnMultiplyClick
    end
    object btnDevide: TButton
      Left = 87
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
      OnClick = btnDevideClick
    end
  end
  object redFreeClicksLeft: TRichEdit
    Left = 216
    Top = 16
    Width = 169
    Height = 122
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
    Left = 16
    Top = 216
    Width = 433
    Height = 587
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
      Left = 24
      Top = 322
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
      Left = 75
      Top = 258
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
      Top = 98
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
      Top = 98
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
      Left = 23
      Top = 265
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
      Height = 27
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
      Width = 185
      Height = 545
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
      Left = 88
      Top = 176
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
      Left = 23
      Top = 176
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
      Left = 141
      Top = 176
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
      Left = 23
      Top = 216
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
      Left = 88
      Top = 216
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
      Left = 141
      Top = 216
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
      Left = 93
      Top = 264
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
      Left = 131
      Top = 264
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
      Left = 169
      Top = 264
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
      Left = 24
      Top = 344
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
      Left = 24
      Top = 390
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
      Left = 24
      Top = 421
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
      Left = 25
      Top = 462
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
      Left = 24
      Top = 493
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
      Top = 98
      Width = 66
      Height = 27
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
      Top = 110
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
      Top = 99
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
    Left = 578
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
    Left = 578
    Top = 80
    Width = 185
    Height = 113
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Lines.Strings = (
      'Spending:'
      '-----------------------'
      'Total:')
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 4
  end
end
