inherited frmAbastecimentos: TfrmAbastecimentos
  Width = 548
  Height = 332
  Caption = 'Abastecimentos'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 12
    Width = 23
    Height = 13
    Caption = 'Data'
  end
  object Panel1: TPanel
    Left = 0
    Top = 259
    Width = 532
    Height = 35
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 1
    DesignSize = (
      532
      35)
    object btnFechar: TBitBtn
      Left = 453
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Fechar'
      ModalResult = 2
      TabOrder = 1
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        20000000000000040000C40E0000C40E00000000000000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00007D21F5037B1EFF00791521FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF0001832BF543A15FFF007B1FE400791927FFFFFF00FFFFFF00A97151A9C38E
        68FFC08B66FFBE8864FFBB8561FFB9835FFF229751FF1C9149FF168F43FF108B
        3BFF3A9F5EFF80C196FF46A362FF107C24FF827344B7FFFFFF00C8926CFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF299B5BFF90CAA9FF8DC8A5FF8AC6
        A1FF88C59EFF6AB685FF82C297FF48A566FF0E7C25FF00791B30CA946EFFFFFF
        FFFFFFFFFFFFFFFFFEFFFFFFFDFFFEFEFDFF319F63FF94CDADFF6FBA8EFF6BB8
        89FF66B685FF61B380FF67B582FF83C298FF3CA05CFF007F25FCCC976FFFFFFF
        FFFFFFFFFCFFFFFFFDFFFEFEFCFFFEFEFCFF37A36BFF96CEB0FF94CDADFF91CB
        AAFF90CBA8FF74BC90FF8AC7A1FF46A568FF088735FF01832D0FD19C73FFFFFF
        FFFFFEFEFCFFFEFEFCFFFEFEFCFFFDFDFBFF3DA56FFF39A46EFF35A268FF319E
        62FF55AF7CFF91CBAAFF4FAB74FF199046FFA97B57FFFFFFFF00D49E75FFFFFF
        FFFFFEFEFCFFFDFDFBFFFDFDFCFFFDFDFBFFFDFDF9FFFCFCF8FFFBF9F7FFFBF9
        F5FF39A269FF5AB381FF289857FFF7FBF9FFB27C5AFFFFFFFF00D5A076FFFFFF
        FFFFFDFDFCFFFDFDFBFFFDFDFAFFFCFCF9FFFCFBF7FFFBF9F5FFFBF8F4FFFBF7
        F3FF3FA670FF319F65FFF1EFE7FFFFFFFFFFB57E5CFFFFFFFF00D8A279FFFFFF
        FFFFFDFDFAFFFCFCFAFFFCFBF9FFFBFAF6FFFBF8F5FFFBF7F4FFFBF6F1FFF8F4
        EEFFF7F2EBFFF7F0EAFFF6ECE8FFFFFFFFFFB7815EFFFFFFFF00D9A379FFFFFF
        FFFFFCFBF9FFFCFBF8FFFBF9F7FFFBF7F4FFFAF7F2FFF9F5F0FFF7F3EDFFF6EF
        EAFFF5EBE7FFF3EAE4FFF2E7DEFFFFFFFFFFBA8560FFFFFFFF00DBA47AFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBD8763FFFFFFFF00DCA77BFFDCA7
        7BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA7
        7BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFC08B66FFFFFFFF00DDAC85FDE8B9
        92FFE8B992FFE8B992FFE8B992FFE8B992FFE8B992FFE8B992FFE8B992FFE8B9
        92FFE8B992FFE8B992FFE8B992FFE8B992FFC1906FFDFFFFFF00A971516BDDB1
        8DF4DCA77BFFDCA67AFFDAA47AFFD8A279FFD5A076FFD49E75FFD29D73FFCF9A
        72FFCE9970FFCB966FFFC9946CFFC49A7AF4A971516BFFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
    end
    object btnImprimir: TBitBtn
      Left = 5
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Imprimir'
      TabOrder = 0
      OnClick = btnImprimirClick
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        20000000000000040000C40E0000C40E00000000000000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00276AA358548CBCF6508ABAFFFFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF004A7FB1656298C9EF92B9DEFF4983B6F5A97151A9C38E
        68FFC08B66FFBE8864FFBB8561FFB9835FFFB47E5CFFB88461FFC89A79FFE6C6
        ABFFE6C5A9FFDFB99AFFB6A397FF9CB8D3FF6194C4FB2B6CA658C8926CFFE6E5
        E5FFE5E5E5FFE5E5E6FFE5E5E5FFE5E5E5FFE6E5E5FFE1CCBBFFF2DCC9FFF8E3
        CEFFF7E0C7FFF8E2CBFFF3D1B3FFB2A399FF837677FFFFFFFF00CA946EFFE7E7
        E7FFE8E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFC3C3C3FFE5C4A8FFF5E5D6FFF4DA
        C1FFF3D8BDFFF3D8BDFFF8E3CCFFD9B69AFFAA7353FFFFFFFF00CC976FFFE9E9
        E9FFD28358FFD28358FFD28358FFE9E9E9FFC3C3C3FFE0BD9EFFF8EADCFFF4DD
        C6FFF4DCC4FFF3D8BDFFF8E2CDFFE4C1A4FFAC7554FFFFFFFF00D19C73FFECEC
        ECFFECECEBFFECECEBFFECECECFFECEBECFFC3C3C3FFE6C6AAFFF3E4D6FFF6E0
        CAFFF5DEC6FFF5DEC5FFF8E6D3FFE0C2A8FFB07A58FFFFFFFF00D49E75FFEFEE
        EEFFEFEFEFFFEFEEEEFFEFEEEEFFEEEFEEFFEEEEEEFFDECFBFFFE9CDB4FFF5E7
        DBFFF8ECDFFFF2DDC9FFEBD0B8FFDFCBBAFFB27C5AFFFFFFFF00D5A076FFF1F1
        F0FFF1F0F1FFF0F1F1FFF1F0F1FFF1F1F1FFC3C3C3FFFEFFFFFFE3D4C2FFDAC6
        ACFFE1BFA0FFE5C4A7FFE3CDB6FFEAEEF0FFB57E5CFFFFFFFF00D8A279FFF2F2
        F2FFD28358FFD28358FFD28358FFF2F2F3FFC3C3C3FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3FFB7815EFFFFFFFF00D9A379FFF5F5
        F5FFF5F5F4FFF4F5F4FFF4F4F4FFF5F5F4FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
        C3FFC3C3C3FFC3C3C3FFC3C3C3FFF4F4F5FFBA8560FFFFFFFF00DBA47AFFF6F6
        F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6
        F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFBD8763FFFFFFFF00DCA77BFFDCA7
        7BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA7
        7BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFC08B66FFFFFFFF00DDAC85FDE8B9
        92FFE8B992FFE8B992FFE8B992FFE8B992FFE8B992FFE8B992FFE8B992FFE8B9
        92FFE8B992FFE8B992FFE8B992FFE8B992FFC1906FFDFFFFFF00A971516BDDB1
        8DF4DCA77BFFDCA67AFFDAA47AFFD8A279FFD5A076FFD49E75FFD29D73FFCF9A
        72FFCE9970FFCB966FFFC9946CFFC49A7AF4A971516BFFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
    end
  end
  object dtpData: TDateTimePicker
    Left = 12
    Top = 36
    Width = 186
    Height = 21
    Date = 42561.739834398150000000
    Time = 42561.739834398150000000
    TabOrder = 0
  end
end
