object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Calculadora'
  ClientHeight = 175
  ClientWidth = 232
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  TextHeight = 15
  object Label1: TLabel
    Left = 40
    Top = 8
    Width = 53
    Height = 15
    Caption = 'Numero 1'
  end
  object Label2: TLabel
    Left = 40
    Top = 58
    Width = 53
    Height = 15
    Caption = 'Numero 2'
  end
  object Label3: TLabel
    Left = 40
    Top = 139
    Width = 52
    Height = 15
    Caption = 'Resultado'
  end
  object btnSomar: TButton
    Left = 40
    Top = 108
    Width = 33
    Height = 25
    Caption = '+'
    TabOrder = 0
    OnClick = btnSomarClick
  end
  object textNumero1: TEdit
    Left = 40
    Top = 29
    Width = 150
    Height = 23
    TabOrder = 1
  end
  object btnSubtracao: TButton
    Left = 79
    Top = 108
    Width = 33
    Height = 25
    Caption = '-'
    TabOrder = 2
    OnClick = btnSubtracaoClick
  end
  object btnMultiplicacao: TButton
    Left = 118
    Top = 108
    Width = 33
    Height = 25
    Caption = '*'
    TabOrder = 3
    OnClick = btnMultiplicacaoClick
  end
  object btnDivisao: TButton
    Left = 157
    Top = 108
    Width = 33
    Height = 25
    Caption = '/'
    TabOrder = 4
    OnClick = btnDivisaoClick
  end
  object textNumero2: TEdit
    Left = 40
    Top = 79
    Width = 150
    Height = 23
    TabOrder = 5
  end
  object textResultado: TEdit
    Left = 104
    Top = 139
    Width = 86
    Height = 23
    TabOrder = 6
  end
end
