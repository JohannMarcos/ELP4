inherited Cadastro: TCadastro
  Caption = 'Cadastro'
  PixelsPerInch = 96
  TextHeight = 13
  object lblCodigo: TLabel
    Left = 48
    Top = 32
    Width = 33
    Height = 13
    Caption = 'Codigo'
  end
  object lblDatCad: TLabel
    Left = 640
    Top = 733
    Width = 39
    Height = 13
    Caption = 'Dat Cad'
  end
  object lblDatUltAlt: TLabel
    Left = 744
    Top = 733
    Width = 49
    Height = 13
    Caption = 'Dat Ult Alt'
  end
  object lblCodUsu: TLabel
    Left = 536
    Top = 733
    Width = 40
    Height = 13
    Caption = 'Cod Usu'
  end
  object edtCodigo: TEdit
    Left = 48
    Top = 51
    Width = 57
    Height = 21
    Alignment = taRightJustify
    TabOrder = 0
    Text = '0'
  end
  object btnSalvar: TButton
    Left = 880
    Top = 728
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 1
    OnClick = btnSalvarClick
  end
  object btnSair: TButton
    Left = 976
    Top = 728
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 2
    OnClick = btnSairClick
  end
  object edtDatCad: TEdit
    Left = 640
    Top = 752
    Width = 89
    Height = 21
    TabOrder = 3
  end
  object edtDatUltAlt: TEdit
    Left = 744
    Top = 752
    Width = 89
    Height = 21
    TabOrder = 4
  end
  object edtCodUsu: TEdit
    Left = 536
    Top = 752
    Width = 89
    Height = 21
    Alignment = taRightJustify
    TabOrder = 5
    Text = '0'
  end
end
