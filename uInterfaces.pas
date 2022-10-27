unit uInterfaces;

interface
uses uConsultaPaises, uConsultaEstados, uConsultaCidades,
     uCadastroPaises, uCadastroEstados, uCadastroCidades;
  type interfaces = class
    private
    protected
      aConsultaPaises : TConsultaPaises;
      aConsultaEstados : TConsultaEstados;
      aConsultaCidades : TConsultaCidades;
      aCadastroPaises : TCadastroPaises;
      aCadastroEstados : TCadastroEstados;
      aCadastroCidades : TCadastroCidades;
    public
      constructor CrieObj;
      destructor Destrua_se;
      procedure PDPaises(pObj, pCrtl: TObject);
      procedure PDEstados(pObj, pCrtl: TObject);
      procedure PDCidades (pObj, pCrtl: TObject);

  end;

implementation

{ interfaces }

constructor interfaces.CrieObj;
begin
  aConsultaPaises := TConsultaPaises.Create(nil);
  aConsultaEstados := TConsultaEstados.Create(nil);
  aConsultaCidades := TConsultaCidades.Create(nil);

  aCadastroPaises := TCadastroPaises.Create(nil);
  aCadastroEstados := TCadastroEstados.Create(nil);
  aCadastroCidades := TCadastroCidades.Create(nil);

  aConsultaPaises.setCadastro(aCadastroPaises);
  aConsultaEstados.setCadastro(aCadastroEstados);
  aconsultaCidades.setCadastro(aCadastroCidades);

  aCadastroEstados.setConsultaPaises(aConsultaPaises);
  aCadastroCidades.setConsultaEstados(aConsultaEstados);

end;

destructor interfaces.Destrua_se;
begin
  aConsultaPaises.FreeInstance;
  aConsultaEstados.FreeInstance;
  aConsultaCidades.FreeInstance;
  aCadastroPaises.FreeInstance;
  aCadastroEstados.FreeInstance;
  aCadastroCidades.FreeInstance;
end;

procedure interfaces.PDCidades(pObj, pCrtl: TObject);
begin
  aConsultaCidades.ConhecaObj(pObj,pCrtl);
  aConsultaCidades.ShowModal;
end;

procedure interfaces.PDEstados(pObj, pCrtl: TObject);
begin
  aConsultaEstados.ConhecaObj(pObj,pCrtl);
  aConsultaEstados.ShowModal;
end;

procedure interfaces.PDPaises(pObj, pCrtl: TObject);
begin
  aConsultaPaises.ConhecaObj(pObj,pCrtl);
  aConsultaPaises.ShowModal;
end;

end.
