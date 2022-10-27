unit uPai;

interface
  uses System.DateUtils;
  type Pai = class
  private
  protected
    Codigo: integer;
    datCad: string;
    datUltAlt: string;
    codUser: integer;
  public
    constructor CrieObj;
    destructor Destrua_se;
    procedure setCodigo(pCodigo: integer);
    procedure setDatCad(pDatCad: string);
    procedure setDatUltAlt(pDatUltAlt: string);
    procedure setCodUser(pCodUser: integer);
    function getCodigo: integer;
    function getDatCad: string;
    function getDatUltAlt: string;
    function getCodUser: integer;
  end;

implementation

{ Pai }

constructor Pai.CrieObj;
begin
  codigo:= 0;
  codUser:= 0;
  datCad:= '';
  datUltAlt:= '';
end;

destructor Pai.Destrua_se;
begin

end;

function Pai.getCodigo: integer;
begin
  result:= codigo;
end;

function Pai.getCodUser: integer;
begin
  result:= codUser;
end;

function Pai.getDatCad: string;
begin
  result:= datCad;
end;

function Pai.getDatUltAlt: string;
begin
  result:= datUltAlt;
end;

procedure Pai.setCodigo(pCodigo: integer);
begin
  codigo:= pCodigo;
end;

procedure Pai.setCodUser(pCodUser: integer);
begin
  codUser:= pCodUser;
end;

procedure Pai.setDatCad(pDatCad: string);
begin
  datCad:= pDatCad;
end;

procedure Pai.setDatUltAlt(pDatUltAlt: string);
begin
  datUltAlt:= pDatUltAlt;
end;

end.
