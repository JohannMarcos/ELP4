object Principal: TPrincipal
  Left = 0
  Top = 0
  Caption = 'Principal'
  ClientHeight = 785
  ClientWidth = 1099
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 48
    Top = 32
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
      object Paises: TMenuItem
        Caption = 'Paises'
        OnClick = PaisesClick
      end
      object Estados: TMenuItem
        Caption = 'Estados'
        OnClick = EstadosClick
      end
      object Cidades: TMenuItem
        Caption = 'Cidades'
        OnClick = CidadesClick
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Sair: TMenuItem
        Caption = 'Sair'
        OnClick = SairClick
      end
    end
    object Lanamentos1: TMenuItem
      Caption = 'Lan'#231'amentos'
    end
    object Lanamentos2: TMenuItem
      Caption = 'Utilitarios'
    end
  end
end
