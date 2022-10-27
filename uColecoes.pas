unit uColecoes;


interface

uses
  Classes, SysUtils;
type

{ Colecoes }

 Colecoes = class
  protected
    qtd: integer;
    item: array[1..100] of TObject;
  public
    constructor CrieObj;
    destructor Destrua_se;
    procedure setQtd(pQtd: integer);
    function getQtd : integer;
    function Vazia: boolean;
    function Cheia: boolean;
    procedure InsereFim (pObj: TObject);
    procedure Insere (pObj: TObject; pPos: integer);
    procedure Remove (pObj: TObject; pPos: integer);
  end;

implementation

{ Colecoes }

constructor Colecoes.CrieObj;
begin
  qtd:= 0;
end;

destructor Colecoes.Destrua_se;
var k: integer;
begin
  for k:= 1 to qtd do
    item[k].FreeInstance;
end;

function Colecoes.getQtd: integer;
begin
  result:= qtd;
end;

function Colecoes.Vazia: boolean;
begin
  result:= (qtd = 0);
end;

function Colecoes.Cheia: boolean;
begin
  result:= (qtd = 100);
end;

procedure Colecoes.InsereFim(pObj: TObject);
begin
  qtd:= qtd + 1;
  item[qtd]:= pObj;
end;



procedure Colecoes.Insere(pObj: TObject; pPos: integer);
var k: integer;
begin
  if(pPos = (qtd + 1)) then
    InsereFim(pObj)
  else
    begin
      qtd := qtd + 1;
      for k:= qtd downto pPos + 1 do
        item[k]:= item[k-1];
      item[pPos] := pObj;
    end;
end;

procedure Colecoes.Remove(pObj: TObject; pPos: integer);
var k: integer;
begin
  pObj:= item[pPos];
  for k:= pPos to qtd - 1 do
    item[k]:= item[k+1];
    qtd:= qtd - 1;
end;
procedure Colecoes.setQtd(pQtd: integer);
begin
  qtd:= pQtd;
end;

end.

