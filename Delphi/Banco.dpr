program Banco;

uses
  Vcl.Forms,
  view.Principal in 'view\view.Principal.pas' {Form1},
  model.Funcionario in 'model\model.Funcionario.pas',
  model.Cliente in 'model\model.Cliente.pas',
  model.Diretor in 'model\model.Diretor.pas',
  model.Engenheiro in 'model\model.Engenheiro.pas',
  model.Gerente in 'model\model.Gerente.pas',
  model.Secretario in 'model\model.Secretario.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
