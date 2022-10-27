unit uController;

interface
  type Controller = class
    private
    protected
    public
      procedure Salvar(pObj: TObject);  virtual; abstract;
      procedure Carregar(pObj: TObject);  virtual;
      function Pesquisar(pObj: TObject; pQuero: boolean): integer;  virtual; abstract;
      procedure GravarTxt; virtual; abstract;
      procedure LerTxt; virtual; abstract;
      function Carrega(pos: integer): TObject; virtual; abstract;
      function qtdeItem: integer; virtual; abstract;

  end;

implementation

{ Controller }

procedure Controller.Carregar(pObj: TObject);
begin

end;

end.
