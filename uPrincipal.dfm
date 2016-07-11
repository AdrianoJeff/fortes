inherited frmPrincipal: TfrmPrincipal
  Width = 610
  Height = 395
  Caption = 'Fortes - Gerson de Castro'
  Menu = MainMenu1
  OldCreateOrder = True
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 256
    Top = 132
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
      object Produtos1: TMenuItem
        Caption = 'Produtos...'
        OnClick = Produtos1Click
      end
      object anques1: TMenuItem
        Caption = 'Tanques...'
        OnClick = anques1Click
      end
      object Bombas1: TMenuItem
        Caption = 'Bombas...'
        OnClick = Bombas1Click
      end
      object Abastecimentos1: TMenuItem
        Caption = 'Abastecimentos...'
        OnClick = Abastecimentos1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Sair1: TMenuItem
        Caption = 'Sair'
        OnClick = Sair1Click
      end
    end
    object Relatrios1: TMenuItem
      Caption = 'Relat'#243'rios'
      object Abastecimentos2: TMenuItem
        Caption = 'Abastecimentos...'
        OnClick = Abastecimentos2Click
      end
    end
  end
end
