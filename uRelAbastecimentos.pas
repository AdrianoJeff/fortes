unit uRelAbastecimentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, RLParser;

type
  TfrmRelAbastecimentos = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLBand3: TRLBand;
    RLLabel1: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLBand4: TRLBand;
    RLDBResult1: TRLDBResult;
    RLExpressionParser1: TRLExpressionParser;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Relatorio(Data: TDateTime);
  end;

var
  frmRelAbastecimentos: TfrmRelAbastecimentos;

implementation

uses
  uDados;

{$R *.dfm}

{ TfrmRelAbastecimentos }

procedure TfrmRelAbastecimentos.Relatorio(Data: TDateTime);
begin
  dmDados.sqlAbast.Close;
  dmDados.sqlAbast.ParamByName('data').AsDate := Data;
  dmDados.cdsAbast.Active := True;

  RLReport1.PreviewModal;

  dmDados.cdsAbast.Active := False;
end;

end.
