unit model.Cliente;

interface

type
  TCliente = class
    private
      FIdFuncionario: Integer;
      FCartaoFidelidade: string;
      FIdCliente: Integer;
      procedure SetCartaoFidelidade(const Value: string);
    procedure SetIdFuncionario(const Value: Integer);
    public
      property IdCliente: Integer read FIdCliente;
      property IdFuncionario: Integer read FIdFuncionario write SetIdFuncionario;
      property CartaoFidelidade: string read FCartaoFidelidade write SetCartaoFidelidade;
  end;

implementation

uses
  SysUtils;

{ TCliente }

procedure TCliente.SetCartaoFidelidade(const Value: string);
begin
  if (Value = EmptyStr) then
    raise Exception.Create('Informe o cartão fidelidade');
  FCartaoFidelidade := Value;
end;

procedure TCliente.SetIdFuncionario(const Value: Integer);
begin
  if (IntToStr(Value) = EmptyStr) then
    raise Exception.Create('Informe o id do funcionário');
  FIdFuncionario := Value;
end;

end.
