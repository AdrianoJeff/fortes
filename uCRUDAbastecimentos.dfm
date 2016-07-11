inherited frmCRUDAbastecimentos: TfrmCRUDAbastecimentos
  Height = 361
  Caption = 'Abastecimentos'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 16
    Top = 48
    Width = 23
    Height = 13
    Caption = 'Data'
    FocusControl = dtpData
  end
  inherited Panel1: TPanel
    Top = 288
    TabOrder = 6
  end
  object dtpData: TDateTimePicker
    Left = 16
    Top = 68
    Width = 125
    Height = 21
    Date = 42561.713187210650000000
    Time = 42561.713187210650000000
    TabOrder = 1
  end
  object lblBombaId: TLabeledEdit
    Left = 16
    Top = 112
    Width = 121
    Height = 21
    EditLabel.Width = 33
    EditLabel.Height = 13
    EditLabel.Caption = 'Bomba'
    TabOrder = 2
  end
  object lblAliquota: TLabeledEdit
    Left = 16
    Top = 156
    Width = 121
    Height = 21
    EditLabel.Width = 40
    EditLabel.Height = 13
    EditLabel.Caption = 'Al'#237'quota'
    TabOrder = 3
  end
  object lblLitros: TLabeledEdit
    Left = 16
    Top = 200
    Width = 121
    Height = 21
    EditLabel.Width = 25
    EditLabel.Height = 13
    EditLabel.Caption = 'Litros'
    TabOrder = 4
  end
  object lblTotal: TLabeledEdit
    Left = 16
    Top = 244
    Width = 121
    Height = 21
    EditLabel.Width = 24
    EditLabel.Height = 13
    EditLabel.Caption = 'Total'
    TabOrder = 5
  end
end
