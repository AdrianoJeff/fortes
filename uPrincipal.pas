unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uModelo, Menus;

type
  TfrmPrincipal = class(TfrmModelo)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Produtos1: TMenuItem;
    anques1: TMenuItem;
    Bombas1: TMenuItem;
    Abastecimentos1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    Relatrios1: TMenuItem;
    Abastecimentos2: TMenuItem;
    procedure Produtos1Click(Sender: TObject);
    procedure anques1Click(Sender: TObject);
    procedure Abastecimentos1Click(Sender: TObject);
    procedure Bombas1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Abastecimentos2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ShowForm(InstanceClass: TComponentClass; var Reference);
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses uCRUDProdutos, uDados, uCRUDTanques, uCRUDModelo, uCRUDAbastecimentos,
  uCRUDBombas, uAbastecimentos;

{$R *.dfm}

procedure TfrmPrincipal.ShowForm(InstanceClass: TComponentClass; var Reference);
begin
  Application.CreateForm(InstanceClass, Reference);
  TfrmCRUDModelo(Reference).QryGeral := dmDados.qryGeral;
  TfrmCRUDModelo(Reference).SqlConn := dmDados.sqlConn;
  TfrmCRUDModelo(Reference).ShowModal;
  TfrmCRUDModelo(Reference).Release;
end;

procedure TfrmPrincipal.Produtos1Click(Sender: TObject);
begin
  inherited;
  ShowForm(TfrmCRUDProdutos, frmCRUDProdutos);
end;

procedure TfrmPrincipal.anques1Click(Sender: TObject);
begin
  inherited;
  ShowForm(TfrmCRUDTanques, frmCRUDTanques);
end;

procedure TfrmPrincipal.Abastecimentos1Click(Sender: TObject);
begin
  inherited;
  ShowForm(TfrmCRUDAbastecimentos, frmCRUDAbastecimentos);
end;

procedure TfrmPrincipal.Bombas1Click(Sender: TObject);
begin
  inherited;
  ShowForm(TfrmCRUDBombas, frmCRUDBombas);
end;

procedure TfrmPrincipal.Sair1Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmPrincipal.Abastecimentos2Click(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmAbastecimentos, frmAbastecimentos);
  frmAbastecimentos.ShowModal;
  frmAbastecimentos.Release;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  inherited;
  dmDados.Conecta;
end;

end.
