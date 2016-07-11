object frmRelAbastecimentos: TfrmRelAbastecimentos
  Left = 37
  Top = 93
  Width = 834
  Height = 471
  Caption = 'frmRelAbastecimentos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    DataSource = dmDados.dsAbast
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ExpressionParser = RLExpressionParser1
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 55
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      Borders.FixedBottom = True
      object RLLabel1: TRLLabel
        Left = 202
        Top = 0
        Width = 314
        Height = 22
        Align = faCenterTop
        Caption = 'Relat'#243'rio de Abastecimentos Di'#225'rios'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 80
        Top = 36
        Width = 31
        Height = 16
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'Data'
      end
      object RLLabel3: TRLLabel
        Left = 184
        Top = 36
        Width = 46
        Height = 16
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'Tanque'
      end
      object RLLabel4: TRLLabel
        Left = 336
        Top = 36
        Width = 45
        Height = 16
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'Bomba'
      end
      object RLLabel5: TRLLabel
        Left = 558
        Top = 36
        Width = 32
        Height = 16
        Alignment = taRightJustify
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'Total'
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 93
      Width = 718
      Height = 16
      object RLDBText1: TRLDBText
        Left = 80
        Top = 0
        Width = 38
        Height = 16
        DataField = 'DATA'
        DataSource = dmDados.dsAbast
      end
      object RLDBText2: TRLDBText
        Left = 184
        Top = 0
        Width = 76
        Height = 16
        DataField = 'TANQUE_ID'
        DataSource = dmDados.dsAbast
      end
      object RLDBText3: TRLDBText
        Left = 336
        Top = 0
        Width = 71
        Height = 16
        DataField = 'BOMBA_ID'
        DataSource = dmDados.dsAbast
      end
      object RLDBText4: TRLDBText
        Left = 507
        Top = 0
        Width = 83
        Height = 16
        Alignment = taRightJustify
        DataField = 'SOMATOTAL'
        DataSource = dmDados.dsAbast
        Holder = RLLabel5
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 133
      Width = 718
      Height = 32
      BandType = btFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      Borders.FixedTop = True
      object RLSystemInfo1: TRLSystemInfo
        Left = 681
        Top = 1
        Width = 37
        Height = 16
        Align = faRightTop
        Info = itNow
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 315
        Top = 1
        Width = 87
        Height = 16
        Align = faCenterTop
        Info = itPageNumber
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 109
      Width = 718
      Height = 24
      BandType = btSummary
      object RLDBResult1: TRLDBResult
        Left = 463
        Top = 4
        Width = 127
        Height = 16
        Alignment = taRightJustify
        DataField = 'SOMATOTAL'
        DataSource = dmDados.dsAbast
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Holder = RLDBText4
        Info = riSum
        ParentFont = False
        ResetAfterPrint = True
      end
    end
  end
  object RLExpressionParser1: TRLExpressionParser
    Left = 404
    Top = 220
  end
end
