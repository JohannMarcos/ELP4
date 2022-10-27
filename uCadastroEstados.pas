unit uCadastroEstados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastro, Vcl.StdCtrls, uEstados, uConsultaPaises;

type
  TCadastroEstados = class(TCadastro)
    edtEstado: TEdit;
    lblEstado: TLabel;
    lblUf: TLabel;
    edtUf: TEdit;
    lblPais: TLabel;
    edtPais: TEdit;
    Edit1: TEdit;
    lblCodigoPais: TLabel;
    btnPesquisarPais: TButton;
    procedure btnPesquisarPaisClick(Sender: TObject);
  private
    { Private declarations }
    oEstado: Estados;
    oConsultaPaises : TConsultaPaises;
  public
    { Public declarations }
    procedure ConhecaObj(pObj,pCrt: TObject); override;
    procedure LimpaEdit;          override;
    procedure CarregaEdit;        override;
    procedure BloqueiaEdit;       override;
    procedure DesBloqueiaEdit;    override;
    procedure Salvar;             override;
    procedure Sair;               override;
    procedure setConsultaPaises (pObj : TObject);

  end;

var
  CadastroEstados: TCadastroEstados;


implementation

{$R *.dfm}

{ TCadastroEstados }

procedure TCadastroEstados.BloqueiaEdit;
begin
  inherited;
  self.edtEstado.Enabled := false;
  self.edtUf.Enabled := false;
  self.edtPais.Enabled := false;
  self.edtCodigo.Enabled := false;
end;

procedure TCadastroEstados.btnPesquisarPaisClick(Sender: TObject);
var aux: string;
begin
  inherited;
  oConsultaPaises.ConhecaObj(oEstado.getPais,nil);
  aux:= oConsultaPaises.btnSair.Caption;
  oConsultaPaises.btnSair.Caption := 'Selecionar';
  oConsultaPaises.ShowModal;
  oConsultaPaises.btnSair.Caption := aux;
end;

procedure TCadastroEstados.CarregaEdit;
begin
  inherited;
  self.edtCodigo.Text := inttoStr(oEstado.getCodigo);
  self.edtEstado.Text := oEstado.getEstado;
  self.edtUf.Text := oEstado.getUf;
  //self.edtPais.Text := oEstado.getPais;
end;

procedure TCadastroEstados.ConhecaObj(pObj, pCrt: TObject);
begin
  inherited;
  oEstado := Estados(pObj);
end;

procedure TCadastroEstados.DesBloqueiaEdit;
begin
  inherited;

end;

procedure TCadastroEstados.LimpaEdit;
begin
  inherited;
  self.edtEstado.Clear;
  self.edtUf.Clear;
  self.edtPais.Clear;
  self.edtCodigo.Clear;
end;

procedure TCadastroEstados.Sair;
begin
  inherited;

end;

procedure TCadastroEstados.Salvar;
begin
  inherited;

end;

procedure TCadastroEstados.setConsultaPaises(pObj: TObject);
begin
  oConsultaPaises := TConsultaPaises(pObj);
end;

end.
