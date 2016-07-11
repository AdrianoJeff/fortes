unit uCRUDBombas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCRUDModelo, StdCtrls, ExtCtrls, Buttons;

type
  TfrmCRUDBombas = class(TfrmCRUDModelo)
    lblTanqueId: TLabeledEdit;
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
  frmCRUDBombas: TfrmCRUDBombas;

implementation

{$R *.dfm}

procedure TfrmCRUDBombas.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'BOMBAS';
  Campos := 'TANQUE_ID';
end;

procedure TfrmCRUDBombas.Limpar;
begin
  inherited;
  lblTanqueId.Clear;
end;

procedure TfrmCRUDBombas.MostraCampos;
begin
  inherited;
  if not ResultConsulta.Eof then
  begin
    lblId.Text := ResultConsulta.FieldByName('id').AsString;
    lblTanqueId.Text := ResultConsulta.FieldByName('tanque_id').AsString;
  end;
end;

procedure TfrmCRUDBombas.ValoresAtualizar;
begin
  inherited;
  Valores := 'preco = ' + lblTanqueId.Text;
end;

procedure TfrmCRUDBombas.ValoresInserir;
begin
  inherited;
  Valores := lblTanqueId.Text;
end;

end.
