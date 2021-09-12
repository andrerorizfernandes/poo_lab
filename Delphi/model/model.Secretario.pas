unit model.Secretario;

interface

type
  FSecretario = class
  private
    FIdSecretario: Integer;
    FIdFuncionario: Integer;
    FSetor: string;
    procedure SetIdFuncionario(const Value: Integer);
    procedure SetSetor(const Value: string);
  public
    property IdSecretario: Integer read FIdSecretario;
    property IdFuncionario: Integer read FIdFuncionario write SetIdFuncionario;
    property Setor: string read FSetor write SetSetor;
  end;

implementation

uses
  SysUtils;

{ FSecretario }

procedure FSecretario.SetIdFuncionario(const Value: Integer);
begin
  if (IntToStr(Value) = EmptyStr) then
    raise Exception.Create('Informe o id do funcionário');
  FIdFuncionario := Value;
end;

procedure FSecretario.SetSetor(const Value: string);
begin
  if (Value = EmptyStr) then
    FSetor := Value;
end;

end.
