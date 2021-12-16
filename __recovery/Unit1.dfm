object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 291
  ClientWidth = 590
  Color = clGrayText
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Shape2: TShape
    Left = 319
    Top = 104
    Width = 241
    Height = 161
  end
  object Shape1: TShape
    Left = 24
    Top = 104
    Width = 241
    Height = 161
  end
  object Image1: TImage
    Left = 32
    Top = 112
    Width = 226
    Height = 145
    Stretch = True
  end
  object Image2: TImage
    Left = 326
    Top = 112
    Width = 226
    Height = 145
  end
  object Label1: TLabel
    Left = 167
    Top = 35
    Width = 58
    Height = 13
    Caption = 'Gray Level :'
  end
  object BitBtn1: TBitBtn
    Left = 24
    Top = 13
    Width = 120
    Height = 60
    Caption = 'Open'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 319
    Top = 13
    Width = 120
    Height = 60
    Caption = 'Process'
    TabOrder = 1
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 440
    Top = 13
    Width = 120
    Height = 60
    Caption = 'Show'
    TabOrder = 2
    OnClick = BitBtn3Click
  end
  object Edit1: TEdit
    Left = 231
    Top = 32
    Width = 56
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    TextHint = '0-255'
  end
  object ImagePr1: TImagePr
    Left = 528
    Top = 312
  end
  object TypeCast1: TTypeCast
    Left = 424
    Top = 312
  end
  object imageFilter1: TimageFilter
    Left = 480
    Top = 312
  end
  object OpenDialog1: TOpenDialog
    Left = 376
    Top = 312
  end
end
