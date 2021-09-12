unit model.Conexao.Interfaces;

interface

uses
  DB;

type
  IModelConexao = interface
    ['{6709B974-924A-433F-BF51-BF4635A0F26D}']
    function Connection: TCustomConnection;
  end;

implementation

end.
