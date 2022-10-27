unit uPaises;

interface
  uses uPai;
  type Paises = class(PAI)
    private
    protected
      pais: string;
      ddi: string;
      sigla: string;
    public
      constructor CrieObj;
      constructor CrieInit(pCodigo, pCodUser: integer; pPais,pDDI,pSigla: string;pDatCad,pDatUltAlt: string);
      destructor Destrua_se;
      procedure setPais(pPais: string);
      procedure setDDI(pDDI: String);
      procedure setSigla(pSigla: string);
      function getPais: string;
      function getDDI: string;
      function getSigla: string;
      function Clone: Paises;
  end;

implementation

{ Paises }

function Paises.Clone: Paises;
begin
  result:= Paises.CrieInit(codigo,codUser,pais,ddi,sigla,datCad,datUltAlt);
end;

constructor Paises.CrieInit(pCodigo, pCodUser: integer; pPais, pDDI,
  pSigla: string; pDatCad, pDatUltAlt: string);
begin
  codigo:= pCodigo;
  codUser:= pCodUser;
  pais:= pPais;
  ddi:= pDDI;
  sigla:= pSigla;
  DatCad:= pDatCad;
  DatUltAlt:= pDatUltAlt;
end;

constructor Paises.CrieObj;
begin
  codigo:= 0;
  codUser:= 0;
  pais:= '';
  ddi:= '';
  sigla:= '';
  datCad:= '';
  datUltAlt:= '';
end;

destructor Paises.Destrua_se;
begin

end;

function Paises.getDDI: string;
begin
  result:= DDI;
end;

function Paises.getPais: string;
begin
  result:= pais;
end;

function Paises.getSigla: string;
begin
  result:= sigla;
end;

procedure Paises.setDDI(pDDI: String);
begin
  ddi:= pDDI;
end;

procedure Paises.setPais(pPais: string);
begin
  pais:= pPais;
end;

procedure Paises.setSigla(pSigla: string);
begin
  sigla:= pSigla;
end;

end.
