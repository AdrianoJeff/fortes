unit uDados;

interface

uses
  SysUtils, Classes, DBXpress, DB, SqlExpr, FMTBcd, Provider, DBClient, MidasLib;

type
  TdmDados = class(TDataModule)
    sqlConn: TSQLConnection;
    qryGeral: TSQLQuery;
    sqlAbast: TSQLQuery;
    dsAbast: TDataSource;
    cdsAbast: TClientDataSet;
    dspAbast: TDataSetProvider;
    sqlAbastDATA: TDateField;
    sqlAbastTANQUE_ID: TIntegerField;
    sqlAbastBOMBA_ID: TIntegerField;
    sqlAbastSOMATOTAL: TFloatField;
    cdsAbastDATA: TDateField;
    cdsAbastTANQUE_ID: TIntegerField;
    cdsAbastBOMBA_ID: TIntegerField;
    cdsAbastSOMATOTAL: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Conecta;
  end;

var
  dmDados: TdmDados;

implementation

{$R *.dfm}

{ TDataModule1 }

procedure TdmDados.Conecta;
begin
  sqlConn.Params.Values['Database'] := 'ABASTECIMENTOS.FDB';
  sqlConn.Open;
end;

end.
