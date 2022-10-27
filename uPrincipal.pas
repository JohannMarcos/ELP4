unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, uInterfaces,
  uPaises, uEstados, uCidades,
  uCtrlPaises;

type
  TPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Paises: TMenuItem;
    Estados: TMenuItem;
    Cidades: TMenuItem;
    Lanamentos1: TMenuItem;
    Lanamentos2: TMenuItem;
    N1: TMenuItem;
    Sair: TMenuItem;
    procedure SairClick(Sender: TObject);
    procedure PaisesClick(Sender: TObject);
    procedure EstadosClick(Sender: TObject);
    procedure CidadesClick(Sender: TObject);
  private
    { Private declarations }
  protected
    aInter : Interfaces;
    oPais : Paises;
    oEstado: Estados;
    aCidades: Cidades;
    aCtrlPais: CtrlPaises;
  public
    { Public declarations }
    procedure ConhecaObj(pPais: Paises; pInter: Interfaces; pEstados: Estados; pCidades: Cidades);

  end;

var
  Principal: TPrincipal;

implementation

{$R *.dfm}

procedure TPrincipal.CidadesClick(Sender: TObject);
begin
  aInter.PDCidades(nil,nil);
end;

procedure TPrincipal.ConhecaObj(pPais: Paises; pInter: Interfaces; pEstados: Estados; pCidades: Cidades);
begin
  aInter := pInter;
  oPais := pPais;
  oEstado:= pEstados;
  aCidades:= pCidades;
  aCtrlPais:= CtrlPaises.CrieObj;
  aCtrlPais.LerTxt;
end;

procedure TPrincipal.EstadosClick(Sender: TObject);
begin
  aInter.PDEstados(oEstado,nil);
end;

procedure TPrincipal.PaisesClick(Sender: TObject);
begin
  aInter.PDPaises(oPais,aCtrlPais);
  aCtrlPais.GravarTxt;
end;

procedure TPrincipal.SairClick(Sender: TObject);
begin
  close;
end;

end.
