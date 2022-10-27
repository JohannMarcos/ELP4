unit uDaoPaises;

interface
  uses uDao, uColPaises, uPaises;
  type DaoPaises = class(Dao)
    private
    protected
      aColPaises: ColPaises;
    public
      constructor CrieObj;
      destructor Destrua_se;
      procedure Salvar(pObj: TObject);  override;
      procedure Carregar(pObj: TObject);  override;
      function Pesquisar(pObj: TObject; pQuero: boolean): integer;  override;
      procedure GravarTxt; override;
      procedure LerTxt; override;
      function Carrega(pos: integer): TObject; override;
      function qtdeItem: integer; override;
  end;

implementation

{ DaoPaises }

function DaoPaises.Carrega(pos: integer): TObject;
begin
  result:= aColPaises.Carrega(pos);
end;

procedure DaoPaises.Carregar(pObj: TObject);
begin
  inherited;

end;

constructor DaoPaises.CrieObj;
begin
  aColPaises := ColPaises.CrieObj;
end;

destructor DaoPaises.Destrua_se;
begin
  aColPaises.Destrua_se;
end;

procedure DaoPaises.GravarTxt;
begin
  inherited;
  aColPaises.GravarTxt;
end;

procedure DaoPaises.LerTxt;
begin
  inherited;
  aColPaises.LerTxt;
end;

function DaoPaises.Pesquisar(pObj: TObject; pQuero: boolean): integer;
var mPos: integer;
begin
  inherited;
  mPos := aColPaises.Pesquisa(Paises(pObj).getPais, pQuero);
  result:= mPos;

end;

function DaoPaises.qtdeItem: integer;
begin
  result:= aColPaises.getQtd;
end;

procedure DaoPaises.Salvar(pObj: TObject);
var mPais: Paises;
    mCodigo, mPos: integer;
begin
  inherited;
  mPais:= Paises(pObj);
  if mPais.getCodigo = 0 then
  begin
    mPos:= aColPaises.Pesquisa(mPais.getPais,false);
    mCodigo:= aColPaises.getQtd + 1;
    mPais.setCodigo(mCodigo);
    aColPaises.Insere(mPais,mPos);
  end;

end;

end.
