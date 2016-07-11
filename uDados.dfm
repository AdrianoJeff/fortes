object dmDados: TdmDados
  OldCreateOrder = False
  Left = 137
  Top = 120
  Height = 311
  Width = 464
  object sqlConn: TSQLConnection
    ConnectionName = 'fortes'
    DriverName = 'Interbase'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbexpint.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Interbase'
      'BlobSize=-1'
      'CommitRetain=False'
      'Database=C:\projetos\spi\trunk\temp\fortes\ABASTECIMENTOS.FDB'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Password=masterkey'
      'RoleName=RoleName'
      'ServerCharSet='
      'SQLDialect=3'
      'Interbase TransIsolation=ReadCommited'
      'User_Name=sysdba'
      'WaitOnLocks=True')
    VendorLib = 'fbclient.DLL'
    Left = 80
    Top = 48
  end
  object qryGeral: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlConn
    Left = 80
    Top = 120
  end
  object sqlAbast: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'data'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select a.DATA, b.TANQUE_ID, a.BOMBA_ID, cast(sum(a.TOTAL) as flo' +
        'at) as SomaTotal'
      'from ABASTECIMENTOS a '
      '    left join BOMBAS b on'
      '        a.BOMBA_ID = b.ID'
      'where'
      '    a.DATA =  :data'
      'group by a.DATA, b.TANQUE_ID, a.BOMBA_ID'
      'order by a.DATA, b.TANQUE_ID, a.BOMBA_ID')
    SQLConnection = sqlConn
    Left = 256
    Top = 92
    object sqlAbastDATA: TDateField
      FieldName = 'DATA'
      Required = True
    end
    object sqlAbastTANQUE_ID: TIntegerField
      FieldName = 'TANQUE_ID'
    end
    object sqlAbastBOMBA_ID: TIntegerField
      FieldName = 'BOMBA_ID'
      Required = True
    end
    object sqlAbastSOMATOTAL: TFloatField
      FieldName = 'SOMATOTAL'
      DisplayFormat = '#,##0.00'
    end
  end
  object dsAbast: TDataSource
    AutoEdit = False
    DataSet = cdsAbast
    Left = 252
    Top = 156
  end
  object cdsAbast: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAbast'
    Left = 324
    Top = 92
    object cdsAbastDATA: TDateField
      FieldName = 'DATA'
      Required = True
    end
    object cdsAbastTANQUE_ID: TIntegerField
      FieldName = 'TANQUE_ID'
    end
    object cdsAbastBOMBA_ID: TIntegerField
      FieldName = 'BOMBA_ID'
      Required = True
    end
    object cdsAbastSOMATOTAL: TFloatField
      FieldName = 'SOMATOTAL'
      DisplayFormat = '#,##0.00'
    end
  end
  object dspAbast: TDataSetProvider
    DataSet = sqlAbast
    Left = 324
    Top = 156
  end
end
