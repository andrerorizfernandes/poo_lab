unit model.Engenheiro;

interface

type
  TEngenheiro = class
  private
    FIdEngenheiro: Integer;
    FIdFuncionario: Integer;
    FRegistroCrea: string;
    procedure SetIdFuncionario(const Value: Integer);
    procedure SetRegistroCrea(const Value: string);
  public
    property IdEngenheiro: Integer read FIdEngenheiro;
    property IdFuncionario: Integer read FIdFuncionario write SetIdFuncionario;
    property RegistroCrea: string read FRegistroCrea write SetRegistroCrea;
  end;

implementation

uses
  SysUtils;

{ TEngenheiro }

procedure TEngenheiro.SetIdFuncionario(const Value: Integer);
begin
  if (IntToStr(Value) = EmptyStr) then
  raise Exception.Create('Informe o id do funcionário');
    FIdFuncionario := Value;
end;

procedure TEngenheiro.SetRegistroCrea(const Value: string);
begin
  if (Value = EmptyStr) then
    FRegistroCrea := Value;
end;

end.
