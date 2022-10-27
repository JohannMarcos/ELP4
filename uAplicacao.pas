unit uAplicacao;

interface
  uses uPrincipal, uInterfaces, uPaises, uEstados, uCidades;
  type Aplicacao = class
    private
    protected
      oPrincipal : TPrincipal;
      aInter : Interfaces;
      oPais : Paises;
      oEstados: Estados;
      aCidades: Cidades;
    public
      constructor crieObj;
      destructor destrua_se;
      procedure execute_se;

  end;
implementation

{ Aplicacao }

constructor Aplicacao.crieObj;
begin
  oPrincipal := TPrincipal.Create(nil);
  aInter:= interfaces.CrieObj;
  oPais:= paises.CrieObj;
  oEstados:= estados.CrieObj;
  aCidades:= cidades.CrieObj;
end;

destructor Aplicacao.destrua_se;
begin
  oPais.Destrua_se;
  oEstados.Destrua_se;
  aCidades.Destrua_se;
  aInter.Destrua_se;
  oPrincipal.FreeInstance;
end;

procedure Aplicacao.execute_se;
begin
  oPais.setCodigo(8000);
  oPrincipal.ConhecaObj(oPais, aInter, oEstados, aCidades);
  oPrincipal.ShowModal;
end;

end.
