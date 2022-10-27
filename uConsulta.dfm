inherited Consulta: TConsulta
  Caption = 'Consulta'
  PixelsPerInch = 96
  TextHeight = 13
  object edtChave: TEdit
    Left = 24
    Top = 24
    Width = 217
    Height = 21
    TabOrder = 0
  end
  object btnPesquisar: TButton
    Left = 256
    Top = 22
    Width = 75
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 1
    OnClick = btnPesquisarClick
  end
  object btnSair: TButton
    Left = 992
    Top = 742
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 2
    OnClick = btnSairClick
  end
  object btnExcluir: TButton
    Left = 896
    Top = 742
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 3
    OnClick = btnExcluirClick
  end
  object btnAlterar: TButton
    Left = 800
    Top = 742
    Width = 75
    Height = 25
    Caption = 'Alterar'
    TabOrder = 4
    OnClick = btnAlterarClick
  end
  object btnIncluir: TButton
    Left = 704
    Top = 742
    Width = 75
    Height = 25
    Caption = 'Incluir'
    TabOrder = 5
    OnClick = btnIncluirClick
  end
  object ListView1: TListView
    Left = 24
    Top = 61
    Width = 1043
    Height = 663
    Columns = <>
    TabOrder = 6
  end
end
