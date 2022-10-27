unit uConsultaPaises;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConsulta, Vcl.ComCtrls, Vcl.StdCtrls,
  uPaises, uCadastroPaises, uCtrlPaises;

type
  TConsultaPaises = class(TConsulta)
  private
    { Private declarations }
    oPais: Paises;
    aCtrlPais: CtrlPaises;
    oCadastroPaises: TCadastroPaises;
  public
    { Public declarations }
    procedure ConhecaObj(pObj,pCtrl: TObject); Override;
    procedure Pesquisar; Override;
    procedure Incluir;   Override;
    procedure Alterar;   Override;
    procedure Excluir;   Override;
    procedure Sair;      Override;
    procedure setCadastro(pObj:TObject); Override;
    procedure CarregaLv;
  end;

var
  ConsultaPaises: TConsultaPaises;

implementation

{$R *.dfm}

{ TConsultaPaises }

procedure TConsultaPaises.Alterar;
begin
  inherited;
  oPais:= Paises(aCtrlPais.Carrega(2));
  oCadastroPaises.ConhecaObj(oPais,aCtrlPais);
  oCadastroPaises.CarregaEdit;
  oCadastroPaises.ShowModal;
  CarregaLV;
end;

procedure TConsultaPaises.CarregaLv;
var oPais: Paises;
    k: integer;
    lvitem: TListItem;
begin
  self.ListView1.Clear;
  for k := 1 to aCtrlPais.qtdeItem do
  begin
    oPais:= Paises(aCtrlPais.Carrega(k));
    lvItem:= self.ListView1.Items.Add;
    lvItem.Caption := inttostr(oPais.getCodigo);
    lvItem.SubItems.Add(oPais.getPais);
    lvItem.SubItems.Add(oPais.getDDI);
    lvItem.SubItems.Add(oPais.getSigla);
  end;
end;

procedure TConsultaPaises.ConhecaObj(pObj, pCtrl: TObject);
begin
  inherited;
  oPais := Paises(pObj);
  aCtrlPais:= CtrlPaises(pCtrl);
  CarregaLV;
end;

procedure TConsultaPaises.Excluir;
begin
  inherited;
  oCadastroPaises.ConhecaObj(oPais,aCtrlPais);
  oCadastroPaises.CarregaEdit;
  oCadastroPaises.BloqueiaEdit;
  oCadastroPaises.ShowModal;
  oCadastroPaises.DesBloqueiaEdit;
  CarregaLv;
end;

procedure TConsultaPaises.Incluir;
begin
  inherited;
  oPais.setCodigo(0);
  oCadastroPaises.ConhecaObj(oPais,aCtrlPais);
  oCadastroPaises.LimpaEdit;
  oCadastroPaises.ShowModal;
  CarregaLv;
end;

procedure TConsultaPaises.Pesquisar;
begin
  inherited;

end;

procedure TConsultaPaises.Sair;
begin
  inherited;

end;

procedure TConsultaPaises.setCadastro(pObj: TObject);
begin
  inherited;
  oCadastroPaises := TCadastroPaises(pObj);
end;

end.
