unit uCidades;

interface
  uses uPai, uEstados;
  type Cidades = class(Pai)
    private
    protected
      cidade: string;
      ddd: string;
      oEstado: Estados;
    public
      constructor CrieObj;
      constructor CrieInit(pCodigo, pCodUser: integer; pCidade, pDDD: string; pEstado: Estados; pDatCad, pDatUltAlt: string);
      destructor Destrua_se;
      procedure setCidade (pCidade: string);
      procedure setDDD (pDDD: string);
      procedure setEstado (pEstado: Estados);
      function getCidade: string;
      function getDDD: string;
      function getEstado: Estados;
      function Clone: Cidades;
  end;

implementation

{ Cidades }

function Cidades.Clone: Cidades;
begin
  result:= cidades.CrieInit(codigo,codUser,cidade,ddd,oEstado.Clone,DatCad,DatUltAlt)
end;

constructor Cidades.CrieInit(pCodigo, pCodUser: integer; pCidade, pDDD: string;
  pEstado: Estados; pDatCad, pDatUltAlt: string);
begin
  codigo:= pCodigo;
  codUser:= pCodUser;
  Cidade:= pCidade;
  DDD:= pDDD;
  oEstado:= pEstado;
  datCad:= pDatCad;
  datUltAlt:= pDatUltAlt;
end;

constructor Cidades.CrieObj;
begin

end;

destructor Cidades.Destrua_se;
begin

end;

function Cidades.getCidade: string;
begin

end;

function Cidades.getDDD: string;
begin

end;

function Cidades.getEstado: Estados;
begin

end;

procedure Cidades.setCidade(pCidade: string);
begin

end;

procedure Cidades.setDDD(pDDD: string);
begin

end;

procedure Cidades.setEstado(pEstado: Estados);
begin

end;

end.
