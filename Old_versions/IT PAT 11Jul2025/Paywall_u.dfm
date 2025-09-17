object frmPaywall: TfrmPaywall
  Left = 123
  Top = 332
  Caption = 'Sign up! Premium FOR FREE'
  ClientHeight = 436
  ClientWidth = 684
  Color = clDarkred
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  OnCreate = FormCreate
  TextHeight = 15
  object lblCardNumber: TLabel
    Left = 514
    Top = 114
    Width = 68
    Height = 15
    Caption = 'Card number'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Segoe UI Semilight'
    Font.Style = []
    ParentFont = False
  end
  object lblExpirationDate: TLabel
    Left = 514
    Top = 192
    Width = 82
    Height = 15
    Caption = 'Expiration Date:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Segoe UI Semilight'
    Font.Style = []
    ParentFont = False
  end
  object lblSecurityCode: TLabel
    Left = 514
    Top = 254
    Width = 74
    Height = 15
    Caption = 'Security Code:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Segoe UI Semilight'
    Font.Style = []
    ParentFont = False
  end
  object lblScroll: TLabel
    Left = -150
    Top = 17
    Width = 653
    Height = 38
    Caption = 'Enter your credit card information:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -29
    Font.Name = 'Roboto Mono Medium'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Shape1: TShape
    Left = -11
    Top = 0
    Width = 476
    Height = 441
    Brush.Color = clAqua
    Pen.Style = psClear
  end
  object shpCutoff: TShape
    Left = 464
    Top = 0
    Width = 26
    Height = 73
    Brush.Color = clDarkred
    Pen.Style = psClear
  end
  object edtCardNumber: TEdit
    Left = 514
    Top = 133
    Width = 140
    Height = 23
    TabOrder = 0
  end
  object btnAccept: TButton
    Left = 541
    Top = 344
    Width = 113
    Height = 33
    Caption = 'Accept'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Roboto Mono Medium'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = btnAcceptClick
  end
  object cmbCardType: TComboBox
    Left = 514
    Top = 77
    Width = 140
    Height = 23
    Style = csDropDownList
    TabOrder = 2
    TextHint = 'Select Card Type'
    Items.Strings = (
      'MisterCard'
      'Viso'
      'Discoverie'
      'PayFal')
  end
  object calExpirationDate: TCalendarPicker
    Left = 514
    Top = 213
    Height = 32
    CalendarHeaderInfo.DaysOfWeekFont.Charset = DEFAULT_CHARSET
    CalendarHeaderInfo.DaysOfWeekFont.Color = clWindowText
    CalendarHeaderInfo.DaysOfWeekFont.Height = -13
    CalendarHeaderInfo.DaysOfWeekFont.Name = 'Segoe UI'
    CalendarHeaderInfo.DaysOfWeekFont.Style = []
    CalendarHeaderInfo.Font.Charset = DEFAULT_CHARSET
    CalendarHeaderInfo.Font.Color = clWindowText
    CalendarHeaderInfo.Font.Height = -20
    CalendarHeaderInfo.Font.Name = 'Segoe UI'
    CalendarHeaderInfo.Font.Style = []
    Color = clWindow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    TextHint = 'select a date'
  end
  object edtSecurityCode: TEdit
    Left = 514
    Top = 275
    Width = 140
    Height = 23
    TabOrder = 4
  end
  object btnBypassPaywall: TButton
    Left = 541
    Top = 383
    Width = 113
    Height = 18
    Caption = 'Bypass paywall'
    TabOrder = 5
    Visible = False
    OnClick = btnBypassPaywallClick
  end
  object redTerms: TRichEdit
    Left = 48
    Top = 156
    Width = 361
    Height = 245
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Lines.Strings = (
      'TERMS OF SERVICE:'
      ''
      'The following will apply to you once you click ACCEPT on the '
      'right '
      'hand side:'
      '1. Zero sign up cost. You will be granted access to all premium '
      'features without paying a sign up fee, however all premium '
      'features have their own usage cost.'
      '2. Free uses: Although you are a premium member, you still '
      'have access to the free uses that the basic calculator offers.'
      '3. PAYMENT:'
      'All payments will be charged to your card once you exit the '
      'program.'
      
        'The total cost of a single usage is calculated using the Cost Ra' +
        'te '
      'and the Input Numbers of the calculation. The following '
      'formula is used to calculate the cost of functions Plus, Minus, '
      'Multiply, Devide, Exponent, Log, Div and Mod:'
      '(Input 1 + Input 2) x Rate.'
      'The trigonometry and number conversion functions only have '
      'one input and their formula for calculating cost is simply'
      'Input x Rate.')
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 6
  end
  object tmrTitelScroll: TTimer
    Enabled = False
    Interval = 500
    OnTimer = tmrTitelScrollTimer
    Left = 424
    Top = 32
  end
end
