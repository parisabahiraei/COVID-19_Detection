object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 417
  ClientWidth = 721
  Color = clGrayText
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 0
    Top = 0
    Width = 721
    Height = 81
    Align = alTop
    Brush.Color = clActiveBorder
  end
  object Image1: TImage
    Left = 0
    Top = 81
    Width = 578
    Height = 336
    Align = alLeft
    AutoSize = True
    Stretch = True
    ExplicitTop = 0
    ExplicitHeight = 578
  end
  object Image2: TImage
    Left = 495
    Top = 81
    Width = 226
    Height = 336
    Align = alRight
    AutoSize = True
    Stretch = True
    ExplicitTop = 79
  end
  object Label1: TLabel
    Left = 183
    Top = 10
    Width = 58
    Height = 13
    Caption = 'Gray Level :'
  end
  object Label2: TLabel
    Left = 272
    Top = 33
    Width = 10
    Height = 13
    Caption = 'to'
  end
  object BitBtn1: TBitBtn
    Left = 24
    Top = 15
    Width = 120
    Height = 60
    Caption = 'Open'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 332
    Top = 15
    Width = 120
    Height = 60
    Caption = 'Process'
    TabOrder = 1
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 584
    Top = 15
    Width = 120
    Height = 60
    Caption = 'Show'
    TabOrder = 2
    OnClick = BitBtn3Click
  end
  object GL1: TEdit
    Left = 247
    Top = 7
    Width = 56
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Text = '125'
    TextHint = '0-255'
  end
  object GL2: TEdit
    Left = 247
    Top = 52
    Width = 56
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    Text = '171'
    TextHint = '0-255'
  end
  object BitBtn4: TBitBtn
    Left = 458
    Top = 15
    Width = 120
    Height = 60
    Caption = 'LPF'
    TabOrder = 5
    OnClick = BitBtn4Click
  end
  object ImagePr1: TImagePr
    Left = 528
    Top = 360
  end
  object TypeCast1: TTypeCast
    Left = 424
    Top = 360
  end
  object imageFilter1: TimageFilter
    Left = 480
    Top = 360
  end
  object OpenDialog1: TOpenDialog
    Left = 376
    Top = 360
  end
  object SaveDialog1: TSaveDialog
    Left = 584
    Top = 360
  end
end
