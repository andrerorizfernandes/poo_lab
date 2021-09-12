unit model.Funcionario;

interface

Type
  TFuncionario = class
    private
      FIdFuncionario: Integer;
      FCpf: string;
      FSexo: string;
      FNome: string;
      FIdentidade: string;
      procedure SetCpf(const Value: string);
      procedure SetIdentidade(const Value: string);
      procedure SetNome(const Value: string);
      procedure SetSexo(const Value: string);
    public
      property IdFuncionario: Integer read FIdFuncionario;
      property Nome: string read FNome write SetNome;
      property Sexo: string read FSexo write SetSexo;
      property Cpf: string read FCpf write SetCpf;
      property Identidade: string read FIdentidade write SetIdentidade;
  end;

implementation

uses
  SysUtils;

{ TFuncionario }

procedure TFuncionario.SetCpf(const Value: string);
begin
  if (Value = Emptystr) then
    raise Exception.Create('Informe o cpf.');
  FCpf := Value;
end;

procedure TFuncionario.SetIdentidade(const Value: string);
begin
  if (Value = Emptystr) then
    raise Exception.Create('Informe a identidade.');
  FIdentidade := Value;
end;

procedure TFuncionario.SetNome(const Value: string);
begin
  if (Value = Emptystr) then
    raise Exception.Create('Informe o nome.');
  FNome := Value;
end;

procedure TFuncionario.SetSexo(const Value: string);
begin
  if (Value = Emptystr) then
    raise Exception.Create('Informe o sexo.');
  FSexo := Value;
end;

end.
