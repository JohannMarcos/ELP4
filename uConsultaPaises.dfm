inherited ConsultaPaises: TConsultaPaises
  Caption = 'Consulta Paises'
  ClientWidth = 1095
  ExplicitWidth = 1111
  PixelsPerInch = 96
  TextHeight = 13
  inherited ListView1: TListView
    Columns = <
      item
        Caption = 'Codigo'
      end
      item
        Caption = 'Pais'
        Width = 200
      end
      item
        Caption = 'DDI'
      end
      item
        Caption = 'Sigla'
      end
      item
        Caption = 'Data Cadastro'
        Width = 100
      end
      item
        Caption = 'Ult Alteracao'
        Width = 100
      end>
    RowSelect = True
    ViewStyle = vsReport
  end
end
