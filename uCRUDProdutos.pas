unit uCRUDProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCRUDModelo, StdCtrls, Buttons, ExtCtrls;

type
  TfrmCRUDProdutos = class(TfrmCRUDModelo)
    lblDescricao: TLabeledEdit;
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
  frmCRUDProdutos: TfrmCRUDProdutos;

implementation

{$R *.dfm}

procedure TfrmCRUDProdutos.ValoresInserir;
begin
  inherited;
  Valores := '''' + lblDescricao.Text + ''' ' ;
end;

procedure TfrmCRUDProdutos.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'PRODUTOS';
  Campos := 'DESCRICAO';
end;

procedure TfrmCRUDProdutos.Limpar;
begin
  inherited;
  lblDescricao.Clear;
end;

procedure TfrmCRUDProdutos.MostraCampos;
begin
  inherited;
  if not ResultConsulta.Eof then
  begin
    lblId.Text := ResultConsulta.FieldByName('id').AsString;
    lblDescricao.Text := ResultConsulta.FieldByName('descricao').AsString;
  end;
end;

procedure TfrmCRUDProdutos.ValoresAtualizar;
begin
  inherited;
  Valores := ' descricao = ''' + lblDescricao.Text + '''';
end;

end.
