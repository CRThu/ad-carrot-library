object fMainForm: TfMainForm
  Left = 0
  Top = 0
  Caption = 'IntLib Info Export'
  ClientHeight = 630
  ClientWidth = 955
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -21
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = fMainFormShow
  PixelsPerInch = 192
  TextHeight = 25
  object Label1: TLabel
    Left = 63
    Top = 68
    Width = 282
    Height = 25
    Caption = 'Choose Installed IntLib Path...'
  end
  object Label2: TLabel
    Left = 303
    Top = 164
    Width = 40
    Height = 25
    Caption = 'Log:'
  end
  object bRun: TButton
    Left = 64
    Top = 208
    Width = 208
    Height = 112
    Caption = 'Run'
    TabOrder = 0
    OnClick = bRunClick
  end
  object cbIntLibs: TComboBox
    Left = 60
    Top = 108
    Width = 844
    Height = 33
    TabOrder = 1
    Text = 'cbIntLibs'
  end
  object mLogs: TMemo
    Left = 304
    Top = 200
    Width = 600
    Height = 392
    TabOrder = 2
  end
end
