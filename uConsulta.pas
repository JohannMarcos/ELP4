unit uConsulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmPai, Vcl.ComCtrls, Vcl.StdCtrls;

type
  TConsulta = class(TFrmPai)
    edtChave: TEdit;
    btnPesquisar: TButton;
    btnSair: TButton;
    btnExcluir: TButton;
    btnAlterar: TButton;
    btnIncluir: TButton;
    ListView1: TListView;
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ConhecaObj(pObj,pCtrl: TObject); Override;
    procedure Pesquisar; virtual;
    procedure Incluir;   virtual;
    procedure Alterar;   virtual;
    procedure Excluir;   virtual;
    procedure Sair;      virtual;
    procedure setCadastro(pObj: TObject); virtual; abstract;
  end;

var
  Consulta: TConsulta;

implementation

{$R *.dfm}

procedure TConsulta.Alterar;
begin

end;

procedure TConsulta.btnAlterarClick(Sender: TObject);
begin
  inherited;
  Alterar;
end;

procedure TConsulta.btnExcluirClick(Sender: TObject);
begin
  inherited;
  Excluir;
end;

procedure TConsulta.btnIncluirClick(Sender: TObject);
begin
  inherited;
  Incluir;
end;

procedure TConsulta.btnPesquisarClick(Sender: TObject);
begin
  inherited;
  Pesquisar;
end;

procedure TConsulta.btnSairClick(Sender: TObject);
begin
  inherited;
  Sair;
end;

procedure TConsulta.ConhecaObj(pObj, pCtrl: TObject);
begin
  inherited;

end;

procedure TConsulta.Excluir;
begin

end;

procedure TConsulta.Incluir;
begin

end;

procedure TConsulta.Pesquisar;
begin

end;

procedure TConsulta.Sair;
begin
  close;
end;

end.
