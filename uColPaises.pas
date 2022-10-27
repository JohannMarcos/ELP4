unit uColPaises;


interface

uses
  Classes, SysUtils, uColecoes, uPaises;
type

{ ColPessoas }

 ColPaises = class(Colecoes)
  protected
  public
    function Pesquisa(chave: string; quero:boolean): integer;
    function Carrega(pPos: integer): Paises;
    procedure GravarTxt;
    procedure LerTxt;
  end;

implementation

{ ColPessoas }

function ColPaises.Carrega(pPos: integer): Paises;
begin
  result:= Paises(item[pPos]);
end;

procedure ColPaises.GravarTxt;
var Arq: TextFile;
    k: integer;
begin
  assign(Arq,'Paises.txt');
  Rewrite(Arq);
  for k := 1 to self.qtd do
  begin
    writeln(Arq, Paises(item[k]).getCodigo);
    writeln(Arq, Paises(item[k]).getPais);
    writeln(Arq, Paises(item[k]).getDDI);
    writeln(Arq, Paises(item[k]).getSigla);
  end;
  close(Arq);
end;

procedure ColPaises.LerTxt;
var Arq: TextFile;
    k: integer;
    mCodigo: integer;
    mPais: string;
    mDDI: string;
    mSigla: string;
    oPais: Paises;
begin
  assign(Arq, 'Paises.txt');
  reset(Arq);
  while not EOF(Arq) do
  begin
    readln(Arq, mCodigo);
    readln(Arq, mPais);
    readln(Arq, mDDI);
    readln(Arq, mSigla);
    oPais := Paises.CrieInit(mCodigo,0, mPais, mDDI, mSigla,'','');
    insereFim(oPais);
  end;
  close(arq);
end;

function ColPaises.Pesquisa(chave: string; quero: boolean): integer;
var k: integer;
begin
  k:= 1;
  if qtd = 0 then
    if quero then
      result:= 0
    else
      result:= 1
  else
  begin
    k:= 1;
    while (k<=qtd) and (chave > Paises(item[k]).getPais) do
      k:= k + 1;
    if quero then
    begin
      if(k<= qtd) then
        if chave = Paises(item[k]).getPais then
          result:= k
        else
          result:= 0
      else
        result:= 0
    end
    else
    begin
      if (k <= qtd) then
        if chave = Paises(item[k]).getPais then
          result:= 0
        else
          result:= k
      else
        result:= k;
    end;
  end;
end;
end.
