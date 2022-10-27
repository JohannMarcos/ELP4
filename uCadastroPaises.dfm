inherited CadastroPaises: TCadastroPaises
  Caption = 'Cadastro Paises'
  PixelsPerInch = 96
  TextHeight = 13
  object lbl_Pais: TLabel [4]
    Left = 128
    Top = 32
    Width = 25
    Height = 13
    Caption = 'Pais*'
  end
  object ldl_DDI: TLabel [5]
    Left = 256
    Top = 32
    Width = 24
    Height = 13
    Caption = 'DDI*'
  end
  object lbl_Sigla: TLabel [6]
    Left = 339
    Top = 32
    Width = 28
    Height = 13
    Caption = 'Sigla*'
  end
  object edt_Pais: TEdit
    Left = 128
    Top = 51
    Width = 105
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 55
    TabOrder = 6
    OnExit = edt_PaisExit
  end
  object edt_DDI: TEdit
    Left = 256
    Top = 51
    Width = 65
    Height = 21
    MaxLength = 5
    TabOrder = 7
  end
  object edt_Sigla: TEdit
    Left = 339
    Top = 51
    Width = 62
    Height = 21
    MaxLength = 3
    TabOrder = 8
  end
end
