inherited CadastroCidades: TCadastroCidades
  Caption = 'Cadastro Cidades'
  PixelsPerInch = 96
  TextHeight = 13
  object lblCidade: TLabel [4]
    Left = 128
    Top = 32
    Width = 39
    Height = 13
    Caption = 'Cidade*'
  end
  object lblDDD: TLabel [5]
    Left = 272
    Top = 32
    Width = 27
    Height = 13
    Caption = 'DDD*'
  end
  object lblEstado: TLabel [6]
    Left = 456
    Top = 32
    Width = 39
    Height = 13
    Caption = 'Estado*'
  end
  object lblCodEstado: TLabel [7]
    Left = 344
    Top = 32
    Width = 90
    Height = 13
    Caption = 'Codigo do Estado*'
  end
  object EditCidade: TEdit
    Left = 128
    Top = 51
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object Edit1: TEdit
    Left = 272
    Top = 51
    Width = 49
    Height = 21
    TabOrder = 7
  end
  object edtEstado: TEdit
    Left = 456
    Top = 51
    Width = 89
    Height = 21
    TabOrder = 8
  end
  object edtCodigoEstado: TEdit
    Left = 344
    Top = 51
    Width = 90
    Height = 21
    TabOrder = 9
  end
  object btnPesquisaEstado: TButton
    Left = 576
    Top = 49
    Width = 75
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 10
    OnClick = btnPesquisaEstadoClick
  end
end
