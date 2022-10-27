inherited CadastroEstados: TCadastroEstados
  Caption = 'Cadastro Estados'
  PixelsPerInch = 96
  TextHeight = 13
  object lblEstado: TLabel [4]
    Left = 128
    Top = 32
    Width = 39
    Height = 13
    Caption = 'Estado*'
  end
  object lblUf: TLabel [5]
    Left = 272
    Top = 32
    Width = 19
    Height = 13
    Caption = 'UF*'
  end
  object lblPais: TLabel [6]
    Left = 447
    Top = 32
    Width = 25
    Height = 13
    Caption = 'Pais*'
  end
  object lblCodigoPais: TLabel [7]
    Left = 344
    Top = 32
    Width = 76
    Height = 13
    Caption = 'Codigo do Pais*'
  end
  object edtEstado: TEdit
    Left = 128
    Top = 51
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object edtUf: TEdit
    Left = 272
    Top = 51
    Width = 49
    Height = 21
    TabOrder = 7
  end
  object edtPais: TEdit
    Left = 447
    Top = 51
    Width = 129
    Height = 21
    TabOrder = 8
  end
  object Edit1: TEdit
    Left = 344
    Top = 51
    Width = 81
    Height = 21
    TabOrder = 9
  end
  object btnPesquisarPais: TButton
    Left = 592
    Top = 49
    Width = 75
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 10
    OnClick = btnPesquisarPaisClick
  end
end
