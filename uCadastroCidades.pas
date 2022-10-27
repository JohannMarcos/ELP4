unit uCadastroCidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastro, Vcl.StdCtrls, uCidades, uConsultaEstados;

type
  TCadastroCidades = class(TCadastro)
    EditCidade: TEdit;
    lblCidade: TLabel;
    Edit1: TEdit;
    lblDDD: TLabel;
    edtEstado: TEdit;
    lblEstado: TLabel;
    edtCodigoEstado: TEdit;
    lblCodEstado: TLabel;
    btnPesquisaEstado: TButton;
    procedure btnPesquisaEstadoClick(Sender: TObject);
  private
    { Private declarations }
    aCidades: Cidades;
    oConsultaEstados: TConsultaEstados;
  public
    { Public declarations }
    procedure ConhecaObj(pObj,pCrt: TObject); override;
    procedure LimpaEdit;          override;
    procedure CarregaEdit;        override;
    procedure BloqueiaEdit;       override;
    procedure DesBloqueiaEdit;    override;
    procedure Salvar;             override;
    procedure Sair;               override;
    procedure setConsultaEstados(pObj: TObject);
  end;

var
  CadastroCidades: TCadastroCidades;

implementation

{$R *.dfm}

procedure TCadastroCidades.BloqueiaEdit;
begin
  inherited;

end;

procedure TCadastroCidades.btnPesquisaEstadoClick(Sender: TObject);
var aux : string;
begin
  inherited;
  oConsultaEstados.ConhecaObj(aCidades.getEstado,nil);
  aux:= oConsultaEstados.btnSair.Caption;
  oConsultaEstados.btnSair.Caption := 'Selecionar';
  oConsultaEstados.ShowModal;
  oConsultaEstados.btnSair.Caption := aux;
end;

procedure TCadastroCidades.CarregaEdit;
begin
  inherited;

end;

procedure TCadastroCidades.ConhecaObj(pObj, pCrt: TObject);
begin
  inherited;
  aCidades:= Cidades(pObj);
end;

procedure TCadastroCidades.DesBloqueiaEdit;
begin
  inherited;

end;

procedure TCadastroCidades.LimpaEdit;
begin
  inherited;

end;

procedure TCadastroCidades.Sair;
begin
  inherited;

end;

procedure TCadastroCidades.Salvar;
begin
  inherited;

end;

procedure TCadastroCidades.setConsultaEstados(pObj: TObject);
begin
  oConsultaEstados:= TConsultaEstados(pObj);
end;

end.
