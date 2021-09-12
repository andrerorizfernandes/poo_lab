unit model.Diretor;

interface

type
  TDiretor = class
  private
    FNumeroCtps: string;
    FIdFuncionario: Integer;
    FIdDiretor: Integer;
    procedure SetIdFuncionario(const Value: Integer);
    procedure SetNumeroCtps(const Value: string);
  public
    property IdDiretor: Integer read FIdDiretor;
    property IdFuncionario: Integer read FIdFuncionario write SetIdFuncionario;
    property NumeroCtps: string read FNumeroCtps write SetNumeroCtps;
  end;

implementation

uses
  SysUtils;

{ TDiretor }

procedure TDiretor.SetIdFuncionario(const Value: Integer);
begin
  if (IntToStr(Value) = EmptyStr) then
    raise Exception.Create('Informe o id do funcionário');
  FIdFuncionario := Value;
end;

procedure TDiretor.SetNumeroCtps(const Value: string);
begin
  if (Value = EmptyStr) then
    FNumeroCtps := Value;
end;

end.
