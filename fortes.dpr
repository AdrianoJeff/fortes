program fortes;

uses
  Forms,
  uModelo in 'uModelo.pas' {frmModelo},
  uCRUDModelo in 'uCRUDModelo.pas' {frmCRUDModelo},
  uDados in 'uDados.pas' {dmDados: TDataModule},
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  uCRUDProdutos in 'uCRUDProdutos.pas' {frmCRUDProdutos},
  uRelAbastecimentos in 'uRelAbastecimentos.pas' {frmRelAbastecimentos},
  uCRUDTanques in 'uCRUDTanques.pas' {frmCRUDTanques},
  uCRUDAbastecimentos in 'uCRUDAbastecimentos.pas' {frmCRUDAbastecimentos},
  uCRUDBombas in 'uCRUDBombas.pas' {frmCRUDBombas},
  uAbastecimentos in 'uAbastecimentos.pas' {frmAbastecimentos};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TdmDados, dmDados);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmRelAbastecimentos, frmRelAbastecimentos);
  Application.Run;
end.
