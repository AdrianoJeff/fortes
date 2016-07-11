unit uAbastecimentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uModelo, StdCtrls, Buttons, ExtCtrls, ComCtrls, Grids, DBGrids;

type
  TfrmAbastecimentos = class(TfrmModelo)
    Panel1: TPanel;
    btnFechar: TBitBtn;
    btnImprimir: TBitBtn;
    Label1: TLabel;
    dtpData: TDateTimePicker;
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAbastecimentos: TfrmAbastecimentos;

implementation

uses
  uRelAbastecimentos, uDados;

{$R *.dfm}

procedure TfrmAbastecimentos.btnImprimirClick(Sender: TObject);
begin
  inherited;
  frmRelAbastecimentos.Relatorio(dtpData.Date);
end;

end.
