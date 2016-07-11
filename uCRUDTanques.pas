unit uCRUDTanques;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCRUDModelo, StdCtrls, ExtCtrls, Buttons;

type
  TfrmCRUDTanques = class(TfrmCRUDModelo)
    lblProdutoId: TLabeledEdit;
    procedure FormCreate(Sender: TObject);
  private
    
  protected
    procedure Limpar; override;
    procedure MostraCampos; override;
    procedure ValoresAtualizar; override;
    procedure ValoresInserir; override;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCRUDTanques: TfrmCRUDTanques;

implementation

{$R *.dfm}

procedure TfrmCRUDTanques.ValoresInserir;
begin
  inherited;
  Valores := lblProdutoId.Text;
end;

procedure TfrmCRUDTanques.Limpar;
begin
  inherited;
  lblProdutoId.Clear;
end;

procedure TfrmCRUDTanques.MostraCampos;
begin
  inherited;
  if not ResultConsulta.Eof then
  begin
    lblId.Text := ResultConsulta.FieldByName('id').AsString;
    lblProdutoId.Text := ResultConsulta.FieldByName('produto_id').AsString;
  end;
end;

procedure TfrmCRUDTanques.ValoresAtualizar;
begin
  inherited;
  Valores := ' produto_id = ' + lblProdutoId.Text;
end;

procedure TfrmCRUDTanques.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'TANQUES';
  Campos := 'PRODUTO_ID';
end;

end.
