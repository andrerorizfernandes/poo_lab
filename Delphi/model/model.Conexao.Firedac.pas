unit model.Conexao.Firedac;

interface

uses
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.UI.Intf,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.Phys,
  FireDAC.VCLUI.Wait,
  Data.DB,
  FireDAC.Comp.Client,
  model.Conexao.Interfaces;

type
  TModelConexaoFiredac = class(TInterfacedObject, IModelConexao)
    private
      FConexao: TFDConnection;
      procedure CopiarLibMySQLParaDiretorioExecutavel;
    public
      constructor Create;
      destructor Destroy; override;
      class function New: IModelConexao;
      function Connection: TCustomConnection;
  end;

implementation

uses
  SysUtils,
  Winapi.Windows;

{ TModelConexaoFiredac }

function TModelConexaoFiredac.Connection: TCustomConnection;
begin
  Result := FConexao;
end;

procedure TModelConexaoFiredac.CopiarLibMySQLParaDiretorioExecutavel;
const
  cNomeDLL = 'libmysql.dll';
var
  lDiretorioExecutavel,
  lDiretorioLib: string;
begin
  lDiretorioLib := ExtractFilePath(ParamStr(0)) + 'lib\';
  lDiretorioExecutavel := ExtractFilePath(ParamStr(0));
  CopyFile(PChar(lDiretorioLib + cNomeDLL), PChar(lDiretorioExecutavel + cNomeDLL), False);
end;

constructor TModelConexaoFiredac.Create;
begin
  FConexao := TFDConnection.Create(nil);

  CopiarLibMySQLParaDiretorioExecutavel;
  FConexao.Params.DriverID := 'MySQL';
  FConexao.Params.Database := 'poo_lab';
  FConexao.Params.UserName := 'root';
  FConexao.Params.Password := '18071988';
  FConexao.Connected := True;
end;

destructor TModelConexaoFiredac.Destroy;
begin
  FConexao.DisposeOf;
  inherited;
end;

class function TModelConexaoFiredac.New: IModelConexao;
begin
  Result := Self.Create;
end;

end.
