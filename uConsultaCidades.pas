unit uConsultaCidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConsulta, Vcl.ComCtrls, Vcl.StdCtrls, uCidades,uCadastroCidades;

type
  TConsultaCidades = class(TConsulta)
  private
    { Private declarations }
    aCidade: Cidades;
    oCadastroCidades: TCadastroCidades;
  public
    { Public declarations }
    procedure ConhecaObj(pObj,pCtrl: TObject); Override;
    procedure Pesquisar; Override;
    procedure Incluir;   Override;
    procedure Alterar;   Override;
    procedure Excluir;   Override;
    procedure Sair;      Override;
    procedure setCadastro(pObj:TObject); Override;
  end;

var
  ConsultaCidades: TConsultaCidades;

implementation

{$R *.dfm}

{ TConsultaCidades }

procedure TConsultaCidades.Alterar;
begin
  inherited;
  oCadastroCidades.ConhecaObj(aCidade,nil);
  oCadastroCidades.LimpaEdit;
  oCadastroCidades.ShowModal;
end;

procedure TConsultaCidades.ConhecaObj(pObj, pCtrl: TObject);
begin
  inherited;
  aCidade:= cidades(pObj);
end;

procedure TConsultaCidades.Excluir;
begin
  inherited;
  oCadastroCidades.ConhecaObj(aCidade,nil);
  oCadastroCidades.LimpaEdit;
  oCadastroCidades.ShowModal;
end;

procedure TConsultaCidades.Incluir;
begin
  inherited;
  oCadastroCidades.ConhecaObj(aCidade,nil);
  oCadastroCidades.LimpaEdit;
  oCadastroCidades.ShowModal;
end;

procedure TConsultaCidades.Pesquisar;
begin
  inherited;

end;

procedure TConsultaCidades.Sair;
begin
  inherited;

end;

procedure TConsultaCidades.setCadastro(pObj: TObject);
begin
  inherited;
  oCadastroCidades := TCadastroCidades(pObj);
end;

end.
