unit uCadastroPaises;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastro, Vcl.StdCtrls,
  uPaises, uCtrlPaises;

type
  TCadastroPaises = class(TCadastro)
    lbl_Pais: TLabel;
    ldl_DDI: TLabel;
    lbl_Sigla: TLabel;
    edt_Pais: TEdit;
    edt_DDI: TEdit;
    edt_Sigla: TEdit;
    procedure edt_PaisExit(Sender: TObject);
  private
    { Private declarations }
    oPais: Paises;
    aCtrlPais: CtrlPaises;
  public
    { Public declarations }
    procedure ConhecaObj(pObj,pCrt: TObject); override;
    procedure LimpaEdit;          override;
    procedure CarregaEdit;        override;
    procedure BloqueiaEdit;       override;
    procedure DesBloqueiaEdit;    override;
    procedure Salvar;             override;
    procedure Sair;               override;
  end;

var
  CadastroPaises: TCadastroPaises;

implementation

{$R *.dfm}

{ TCadastroPaises }

procedure TCadastroPaises.BloqueiaEdit;
begin
  inherited;
  self.edt_Pais.Enabled := false;
  self.edt_DDI.Enabled := false;
  self.edt_Sigla.Enabled := false;
end;

procedure TCadastroPaises.CarregaEdit;
begin
  inherited;
  self.edtCodigo.Text := inttoStr(oPais.getCodigo);
  self.edt_Pais.Text := oPais.getPais;
  self.edt_DDI.Text := oPais.getDDI;
  self.edt_Sigla.Text := oPais.getSigla;
end;

procedure TCadastroPaises.ConhecaObj(pObj, pCrt: TObject);
begin
  inherited;
  oPais := Paises(pObj);
  aCtrlPais:= CtrlPaises(pCrt);
end;

procedure TCadastroPaises.DesBloqueiaEdit;
begin
  inherited;
  self.edt_Pais.Enabled := true;
  self.edt_DDI.Enabled := true;
  self.edt_Sigla.Enabled := true;
end;

procedure TCadastroPaises.edt_PaisExit(Sender: TObject);
var mPais: Paises;
    mMsg: string;
begin
  inherited;
  mPais := Paises.CrieObj;
  mPais.setPais(edt_pais.text);
  mPais.setCodigo(strtoint(edtcodigo.text));
  if length(edt_pais.Text) = 0  then
  begin
    showmessage('Campo Obrigatorio');
    edt_pais.SetFocus;
  end
  else
  begin
    mMsg:= aCtrlPais.JaCadastrado(oPais, mPais);
    if mMsg <> '' then
    begin
      showmessage(mMsg);
      edt_pais.SetFocus;
    end;
  end;
  mPais.DisposeOf;
end;

procedure TCadastroPaises.LimpaEdit;
begin
  inherited;
  self.edt_Pais.Clear;
  self.edt_DDI.Clear;
  self.edt_Sigla.Clear;
end;

procedure TCadastroPaises.Sair;
begin
  inherited;

end;

procedure TCadastroPaises.Salvar;
begin
  inherited;
  if Length(edt_Pais.Text) = 0 then
    begin
      showmessage('O Campo pais eh obrigatorio');
      edt_Pais.SetFocus;
    end
    else if Length(edt_DDI.Text) = 0 then
    begin
      showmessage('O Campo DDI eh obrigatorio');
      edt_DDI.SetFocus;
    end
    else if Length(edt_Sigla.Text) = 0 then
    begin
      showmessage('O Campo Sigla eh obrigatorio');
      edt_sigla.SetFocus;
    end
    else
    begin
      oPais.setCodigo(strtoint(edtCodigo.Text));
      oPais.setPais(edt_Pais.Text);
      oPais.setDDI(edt_DDI.Text);
      oPais.setSigla(edt_sigla.Text);
      aCtrlPais.Salvar(oPais.Clone);
    end;
end;
end.
