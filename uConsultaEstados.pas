unit uConsultaEstados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConsulta, Vcl.ComCtrls, Vcl.StdCtrls, uEstados, uCadastroEstados;

type
  TConsultaEstados = class(TConsulta)
  private
    { Private declarations }
    oEstado: Estados;
    oCadastroEstados: TCadastroEstados;
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
  ConsultaEstados: TConsultaEstados;

implementation

{$R *.dfm}

{ TConsultaEstados }

procedure TConsultaEstados.Alterar;
begin
  inherited;
  oCadastroEstados.ConhecaObj(oEstado,nil);
  oCadastroEstados.LimpaEdit;
  oCadastroEstados.ShowModal;
end;

procedure TConsultaEstados.ConhecaObj(pObj, pCtrl: TObject);
begin
  inherited;
  oEstado := Estados(pObj);
end;

procedure TConsultaEstados.Excluir;
begin
  inherited;
  oCadastroEstados.ConhecaObj(oEstado,nil);
  oCadastroEstados.LimpaEdit;
  oCadastroEstados.ShowModal;
end;

procedure TConsultaEstados.Incluir;
begin
  inherited;
  oCadastroEstados.ConhecaObj(oEstado,nil);
  oCadastroEstados.LimpaEdit;
  oCadastroEstados.ShowModal;
end;

procedure TConsultaEstados.Pesquisar;
begin
  inherited;

end;

procedure TConsultaEstados.Sair;
begin
  inherited;

end;

procedure TConsultaEstados.setCadastro(pObj: TObject);
begin
  inherited;
  oCadastroEstados := TCadastroEstados(pObj);
end;

end.
