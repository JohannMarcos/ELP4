unit uEstados;

interface
  uses uPai, uPaises;
  type Estados = class(PAI)
    private
    protected
      Estado: string;
      UF: string;
      oPais: Paises;
    public
      constructor CrieObj;
      constructor CrieInit(pCodigo, pCodUser: integer; pEstado,pUf: string; pPais: Paises;pDatCad,pDatUltAlt: string);
      destructor Destrua_se;
      procedure setEstado (pEstado: string);
      procedure setUf (pUf: string);
      procedure setPais (pPais: Paises);
      function getEstado: string;
      function getUf: string;
      function getPais: Paises;
      function Clone: Estados;
  end;
implementation

{ Estados }

function Estados.Clone: Estados;
begin
  result:= Estados.CrieInit(codigo,codUser,estado,uf,oPais.Clone,DatCad,DatUltAlt);
end;

constructor Estados.CrieInit(pCodigo, pCodUser: integer; pEstado, pUf: string;
  pPais : Paises; pDatCad, pDatUltAlt: string);
begin
  codigo:= pCodigo;
  codUser:= pCodUser;
  estado:= pEstado;
  uf:= pUf;
  oPais:= pPais;
  datCad:= pDatCad;
  datUltAlt:= pDatUltAlt;
end;

constructor Estados.CrieObj;
begin
  codigo:= 0;
  codUser:= 0;
  estado:= '';
  uf:= '';
  oPais := Paises.CrieObj;
end;

destructor Estados.Destrua_se;
begin
  oPais.Destrua_se;
end;

function Estados.getEstado: string;
begin
  result:= Estado;
end;

function Estados.getPais: Paises;
begin
  result:= oPais;
end;

function Estados.getUf: string;
begin
  result:= UF;
end;

procedure Estados.setEstado(pEstado: string);
begin
  Estado:= pEstado;
end;

procedure Estados.setPais(pPais: Paises);
begin
  oPais:= pPais;
end;

procedure Estados.setUf(pUf: string);
begin
  UF:= pUf;
end;

end.
