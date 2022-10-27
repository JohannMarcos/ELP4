program Projeto_2;

uses
  Vcl.Forms,
  uFrmPai in 'uFrmPai.pas' {FrmPai},
  uConsulta in 'uConsulta.pas' {Consulta},
  uCadastro in 'uCadastro.pas' {Cadastro},
  uConsultaPaises in 'uConsultaPaises.pas' {ConsultaPaises},
  uConsultaEstados in 'uConsultaEstados.pas' {ConsultaEstados},
  uConsultaCidades in 'uConsultaCidades.pas' {ConsultaCidades},
  uCadastroPaises in 'uCadastroPaises.pas' {CadastroPaises},
  uCadastroEstados in 'uCadastroEstados.pas' {CadastroEstados},
  uCadastroCidades in 'uCadastroCidades.pas' {CadastroCidades},
  uAplicacao in 'uAplicacao.pas',
  uEstados in 'uEstados.pas',
  uCidades in 'uCidades.pas',
  uController in 'uController.pas',
  uCtrlPaises in 'uCtrlPaises.pas',
  uDao in 'uDao.pas',
  uDaoPaises in 'uDaoPaises.pas';

{$R *.res}
var aAplicacao : Aplicacao;

begin
//  Application.Initialize;
//  Application.MainFormOnTaskbar := True;
//  Application.CreateForm(TPrincipal, Principal);
  Application.CreateForm(TFrmPai, FrmPai);
  Application.CreateForm(TConsulta, Consulta);
  Application.CreateForm(TCadastro, Cadastro);
  Application.CreateForm(TConsultaPaises, ConsultaPaises);
  Application.CreateForm(TConsultaEstados, ConsultaEstados);
  Application.CreateForm(TConsultaCidades, ConsultaCidades);
  Application.CreateForm(TCadastroPaises, CadastroPaises);
  Application.CreateForm(TCadastroEstados, CadastroEstados);
  Application.CreateForm(TCadastroCidades, CadastroCidades);
  //  Application.Run;
  aAplicacao := Aplicacao.crieObj;
  aAplicacao.execute_se;
  aAplicacao.destrua_se;
end.
