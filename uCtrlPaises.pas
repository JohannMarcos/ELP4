unit uCtrlPaises;

interface
  uses uController, uDaoPaises, uPaises, system.SysUtils;
  type ctrlPaises = class(controller)
    private
    protected
      aDaoPaises: DaoPaises;
    public
      constructor CrieObj;
      destructor Destrua_se;
      procedure Salvar(pObj: TObject);  override;
      procedure Carregar(pObj: TObject);
      function Pesquisar(pObj: TObject; pQuero: boolean): integer; override;
      procedure GravarTxt; override;
      procedure LerTxt; override;
      function Carrega(pos: integer): TObject; override;
      function qtdeItem: integer; override;
      function jaCadastrado(oPais, mPais: Paises): string;
  end;

implementation

{ ctrlPaises }

function ctrlPaises.Carrega(pos: integer): TObject;
begin
  result:= aDaoPaises.Carrega(pos);
end;

procedure ctrlPaises.Carregar(pObj: TObject);
begin

end;

constructor ctrlPaises.CrieObj;
begin
  aDaoPaises := DaoPaises.CrieObj;
end;

destructor ctrlPaises.Destrua_se;
begin

end;

procedure ctrlPaises.GravarTxt;
begin
  inherited;
  aDaoPaises.GravarTxt;
end;

function ctrlPaises.jaCadastrado(oPais, mPais: Paises): string;
var mQuero: boolean;
    mPos: integer;
    mMsg: string;
begin
  mQuero:= oPais.getCodigo <> 0; // Alteracao qnd <> 0(Se fosse '=' seria um Inclusao)
  mPos:= Pesquisar(mPais,mQuero);
  mPais := Paises(Carrega(mPos));
  mMsg:= '';
  if mQuero then // Alteracao ou Exclusao
  begin // Encontrei na coll, tem o valor em outro objeto
    if (mPos <> 0) then
    begin
      mPais := Paises(carrega(mPos));
      if (mPais.getCodigo <> oPais.getCodigo) then
        mMsg:= 'Pais '+mPais.getPais+ ' já cadastrado com o codigo = '+inttostr(mPais.getCodigo)+ '!';
    end;
  end
  else // Nao quero encontrar
  begin
    if mPos = 0 then // Encontrou, porem a posição eh zero
    begin
      mPos:= Pesquisar(mPais,true);
      if mPos <> 0 then
        mPais := Paises(carrega(mPos));
      mMsg:= 'Pais '+mPais.getPais+ ' já cadastrado em outro codigo = '+inttostr(mPais.getCodigo)+ '!';
  end;
  result:= mMsg;
end;
end;

procedure ctrlPaises.LerTxt;
begin
  inherited;
  aDaoPaises.LerTxt;
end;

function ctrlPaises.Pesquisar(pObj: TObject;pQuero: boolean): integer;
begin
  result:= aDaoPaises.Pesquisar(pObj, pQuero);
end;

function ctrlPaises.qtdeItem: integer;
begin
  result:= aDaoPaises.qtdeItem;
end;

procedure ctrlPaises.Salvar(pObj: TObject);
begin
  inherited;
  aDaoPaises.Salvar(pObj);
end;

end.
