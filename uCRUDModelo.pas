unit uCRUDModelo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uModelo, StdCtrls, Buttons, ExtCtrls, DBXpress, DB, SqlExpr;

type
  TfrmCRUDModelo = class(TfrmModelo)
    Panel1: TPanel;
    btnFechar: TBitBtn;
    btnIncluir: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    btnBuscar: TBitBtn;
    btnLimpar: TBitBtn;
    lblId: TLabeledEdit;
    lblBuscaId: TLabeledEdit;
    procedure btnIncluirClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
    FTabela: string;
    FCampos: string;
    FValores: string;
    FResultConsulta: TDataSet;
    FQryGeral: TSQLQuery;
    FSqlConn: TSQLConnection;

  protected
    procedure ValoresInserir; virtual; abstract;
    procedure ValoresAtualizar; virtual; abstract;
    procedure Limpar; virtual;
    procedure MostraCampos; virtual; abstract;
    function ExecSQL(LimparApos: Boolean = False): Boolean;

    property ResultConsulta: TDataSet read FResultConsulta;

  public
    { Public declarations }
    property Tabela: string read FTabela write FTabela;
    property Valores: string read FValores write FValores;
    property Campos: string read FCampos write FCampos;
    property QryGeral: TSQLQuery read FQryGeral write FQryGeral;
    property SqlConn: TSQLConnection read FSqlConn write FSqlConn;

    procedure Inserir;
    function Consultar(Id: Integer): TDataSet;
    function Atualizar(id: Integer): Boolean;
    function Excluir(id: Integer): Boolean;

  end;

var
  frmCRUDModelo: TfrmCRUDModelo;

implementation

{$R *.dfm}

{ TfrmCRUDModelo }

function TfrmCRUDModelo.Atualizar(id: Integer): Boolean;
begin
  ValoresAtualizar;

  QryGeral.SQL.Clear;
  QryGeral.SQL.Text := 'update ' + Tabela + ' set ' + Valores +
    ' where id = ' + IntToStr(Id);

  Result := ExecSQL;
end;

function TfrmCRUDModelo.Consultar(Id: Integer): TDataSet;
begin
  QryGeral.SQL.Clear;
  QryGeral.SQL.Text := 'select * from ' + FTabela + ' where id = ' + IntToStr(Id);

  QryGeral.Open;

  Result := QryGeral;
end;

function TfrmCRUDModelo.Excluir(id: Integer): Boolean;
begin
  QryGeral.SQL.Clear;
  QryGeral.SQL.Text := 'delete from ' + FTabela + ' where id = ' + IntToStr(Id);

  Result := ExecSQL(True);
end;

procedure TfrmCRUDModelo.Inserir;
begin
  ValoresInserir;

  QryGeral.SQL.Clear;
  QryGeral.SQL.Text := 'insert into ' + FTabela + '(' + FCampos + ') values(' +
    FValores + ')';

  ExecSQL(True);
end;

procedure TfrmCRUDModelo.btnIncluirClick(Sender: TObject);
begin
  inherited;
  Inserir;
end;

procedure TfrmCRUDModelo.btnFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

function TfrmCRUDModelo.ExecSQL(LimparApos: Boolean = False): Boolean;
var
  TD: TTransactionDesc;
begin
  try
    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;

    SqlConn.StartTransaction(TD);
    QryGeral.ExecSQL;
    SqlConn.Commit(TD);

    if LimparApos then
    begin
      Limpar;
    end;

    Result := True;
  except
    on E: Exception do
    begin
      SqlConn.Rollback(TD);
      Application.ShowException(E);
      Result := False;
    end;
  end;
end;

procedure TfrmCRUDModelo.btnBuscarClick(Sender: TObject);
begin
  inherited;
  if Trim(lblBuscaId.Text) <> '' then
  begin
    FResultConsulta := Consultar(StrToInt(lblBuscaId.Text));

    if FResultConsulta.Eof then
    begin
      Application.MessageBox('Busca não obteve resultado.', 'Busca', MB_ICONWARNING);
      Limpar;
    end
    else
    begin
      MostraCampos;
      FResultConsulta.Close;
    end;
  end
  else
  begin
    Application.MessageBox('Id deve ter um valor', 'Busca', MB_ICONWARNING);
    lblBuscaId.SetFocus;
  end;
end;

procedure TfrmCRUDModelo.Limpar;
begin
  lblId.Clear;
end;

procedure TfrmCRUDModelo.btnAlterarClick(Sender: TObject);
begin
  inherited;
  if Atualizar(StrToInt(lblId.Text)) then
  begin
    Application.MessageBox('Atualizado com sucesso!', 'Alterar', MB_ICONINFORMATION);
  end;
end;

procedure TfrmCRUDModelo.btnLimparClick(Sender: TObject);
begin
  inherited;
  Limpar;
end;

procedure TfrmCRUDModelo.btnExcluirClick(Sender: TObject);
begin
  inherited;
  if Excluir(StrToInt(lblId.Text)) then
  begin
    Application.MessageBox('Excluído com sucesso!', 'Excluir', MB_ICONINFORMATION);
  end;
end;

end.
