unit model.Gerente;

interface

type
  TGerente = class
  private
    FIdGerente: Integer;
    FIdFuncionario: Integer;
    FNumeroCtps: string;
    FSetor: string;
    procedure SetIdFuncionario(const Value: Integer);
    procedure SetNumeroCtps(const Value: string);
    procedure SetSetor(const Value: string);
  public
    property IdGerente: Integer read FIdGerente;
    property IdFuncionario: Integer read FIdFuncionario write SetIdFuncionario;
    property NumeroCtps: string read FNumeroCtps write SetNumeroCtps;
    property Setor: string read FSetor write SetSetor;
  end;

implementation

uses
  SysUtils;

{ TGerente }

procedure TGerente.SetIdFuncionario(const Value: Integer);
begin
  if (IntToStr(Value) = EmptyStr) then
    raise Exception.Create('Informe o id do funcionário');
  FIdFuncionario := Value;
end;

procedure TGerente.SetNumeroCtps(const Value: string);
begin
  if (Value = EmptyStr) then
    FNumeroCtps := Value;
end;

procedure TGerente.SetSetor(const Value: string);
begin
  if (Value = EmptyStr) then
    FSetor := Value;
end;

end.
