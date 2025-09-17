object frmLogin: TfrmLogin
  Left = 0
  Top = 374
  Caption = 'Login'
  ClientHeight = 364
  ClientWidth = 532
  Color = clHotLight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  OnCreate = FormCreate
  TextHeight = 15
  object lblUsername: TLabel
    Left = 103
    Top = 99
    Width = 99
    Height = 21
    Caption = 'Username:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Roboto Mono Medium'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblAdminPassword: TLabel
    Left = 37
    Top = 126
    Width = 165
    Height = 21
    Caption = 'Admin Password:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Roboto Mono Medium'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object edtUsername: TEdit
    Left = 208
    Top = 96
    Width = 209
    Height = 23
    TabOrder = 0
    OnChange = edtUsernameChange
  end
  object cmbUserType: TComboBox
    Left = 208
    Top = 156
    Width = 161
    Height = 23
    Style = csDropDownList
    TabOrder = 1
    OnChange = cmbUserTypeChange
    Items.Strings = (
      'Regular user'
      'Admin')
  end
  object edtAdminPassword: TEdit
    Left = 208
    Top = 126
    Width = 209
    Height = 23
    TabOrder = 2
    Visible = False
  end
  object btnLogIn: TButton
    Left = 208
    Top = 186
    Width = 97
    Height = 25
    Caption = 'Log in'
    TabOrder = 3
    Visible = False
    OnClick = btnLogInClick
  end
  object chxPremium: TCheckBox
    Left = 208
    Top = 224
    Width = 97
    Height = 17
    Caption = 'Premium'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    Visible = False
  end
end
