object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'Form5'
  ClientHeight = 422
  ClientWidth = 752
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 97
    Top = 40
    Width = 544
    Height = 365
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object Animal: TButton
    Left = 8
    Top = 38
    Width = 75
    Height = 25
    Caption = 'Add Animal'
    TabOrder = 1
    OnClick = AnimalClick
  end
  object Cane: TButton
    Left = 8
    Top = 69
    Width = 75
    Height = 25
    Caption = 'Add Cane'
    TabOrder = 2
    OnClick = CaneClick
  end
  object Gatto: TButton
    Left = 8
    Top = 100
    Width = 75
    Height = 25
    Caption = 'Add Gatto'
    TabOrder = 3
    OnClick = GattoClick
  end
  object Verso: TButton
    Left = 655
    Top = 38
    Width = 83
    Height = 25
    Caption = 'Verso'
    TabOrder = 4
    OnClick = VersoClick
  end
  object Zampa: TButton
    Left = 655
    Top = 69
    Width = 83
    Height = 25
    Caption = 'Zampa'
    TabOrder = 5
    OnClick = ZampaClick
  end
  object Cambia_colore: TButton
    Left = 655
    Top = 100
    Width = 83
    Height = 25
    Caption = 'Cambia_colore'
    TabOrder = 6
    OnClick = Cambia_coloreClick
  end
  object Button2: TButton
    Left = 566
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Distruggi Zoo'
    TabOrder = 7
    OnClick = Button2Click
  end
  object Camaleonte: TButton
    Left = 8
    Top = 131
    Width = 75
    Height = 25
    Caption = 'Camaleonte'
    TabOrder = 8
    OnClick = CamaleonteClick
  end
end
