unit uCRUDAbastecimentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCRUDModelo, StdCtrls, ExtCtrls, Buttons, ComCtrls;

type
  TfrmCRUDAbastecimentos = class(TfrmCRUDModelo)
    dtpData: TDateTimePicker;
    lblBombaId: TLabeledEdit;
    lblAliquota: TLabeledEdit;
    lblLitros: TLabeledEdit;
    Label1: TLabel;
    lblTotal: TLabeledEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }

  protected
    procedure ValoresInserir; override;
    procedure ValoresAtualizar; override;
    procedure Limpar; override;
    procedure MostraCampos; override;

  public
    { Public declarations }
  end;

var
  frmCRUDAbastecimentos: TfrmCRUDAbastecimentos;

implementation

uses DB;

{$R *.dfm}

procedure TfrmCRUDAbastecimentos.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'ABASTECIMENTOS';
  Campos := 'DATA, BOMBA_ID, ALIQUOTA, LITROS, TOTAL';
end;

procedure TfrmCRUDAbastecimentos.Limpar;
begin
  inherited;
  lblBombaId.Clear;
  lblAliquota.Clear;
  lblLitros.Clear;
  lblTotal.Clear;
end;

procedure TfrmCRUDAbastecimentos.MostraCampos;
begin
  inherited;
  if not ResultConsulta.Eof then
  begin
    lblId.Text := ResultConsulta.FieldByName('id').AsString;
    dtpData.Date := ResultConsulta.FieldByName('data').AsDateTime;
    lblBombaId.Text := ResultConsulta.FieldByName('bomba_id').AsString;
    lblAliquota.Text := ResultConsulta.FieldByName('aliquota').AsString;
    lblLitros.Text := ResultConsulta.FieldByName('litros').AsString;
    lblTotal.Text := ResultConsulta.FieldByName('total').AsString;
  end;
end;

procedure TfrmCRUDAbastecimentos.ValoresAtualizar;
begin
  inherited;
  Valores := ' data := ''' + FormatDateTime('yyyy-mm-dd', dtpData.Date) +
    ''', bomba_id = ' + lblBombaId.Text + ', aliquota = ' + lblAliquota.Text +
    ', litros = ' + lblLitros.Text +
    ', total = ' + lblTotal.Text;
end;

procedure TfrmCRUDAbastecimentos.ValoresInserir;
begin
  inherited;
  Valores := ' ''' + FormatDateTime('yyyy-mm-dd', dtpData.Date) +
    ''', ' + lblBombaId.Text + ', ' + lblAliquota.Text +
    ', ' + lblLitros.Text +
    ', ' + lblTotal.Text;
end;

end.
