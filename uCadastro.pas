unit uCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmPai, Vcl.StdCtrls;

type
  TCadastro = class(TFrmPai)
    lblCodigo: TLabel;
    edtCodigo: TEdit;
    btnSalvar: TButton;
    btnSair: TButton;
    lblDatCad: TLabel;
    lblDatUltAlt: TLabel;
    edtDatCad: TEdit;
    edtDatUltAlt: TEdit;
    lblCodUsu: TLabel;
    edtCodUsu: TEdit;
    procedure btnSairClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ConhecaObj(pObj,pCrt: TObject); override;
    procedure LimpaEdit;          virtual;
    procedure CarregaEdit;        virtual;
    procedure BloqueiaEdit;       virtual;
    procedure DesBloqueiaEdit;    virtual;
    procedure Salvar;             virtual;
    procedure Sair;               virtual;

  end;

var
  Cadastro: TCadastro;

implementation

{$R *.dfm}

{ TCadastro }

procedure TCadastro.BloqueiaEdit;
begin

end;

procedure TCadastro.btnSairClick(Sender: TObject);
begin
  inherited;
  sair;
end;

procedure TCadastro.btnSalvarClick(Sender: TObject);
begin
  inherited;
  Salvar;
end;

procedure TCadastro.CarregaEdit;
begin

end;

procedure TCadastro.ConhecaObj(pObj, pCrt: TObject);
begin
  inherited;

end;

procedure TCadastro.DesBloqueiaEdit;
begin

end;

procedure TCadastro.LimpaEdit;
begin

end;

procedure TCadastro.Sair;
begin
  close;
end;

procedure TCadastro.Salvar;
begin

end;

end.
