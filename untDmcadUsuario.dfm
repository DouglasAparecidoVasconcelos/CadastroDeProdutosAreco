object dmCadUsuario: TdmCadUsuario
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 169
  Width = 261
  object tbCadUsuario: TFDTable
    IndexFieldNames = 'ID_USUARIO'
    Connection = DmPrincipal.FDConnection1
    UpdateOptions.UpdateTableName = 'USUARIO'
    TableName = 'USUARIO'
    Left = 112
    Top = 56
    object tbCadUsuarioID_USUARIO: TFDAutoIncField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tbCadUsuarioNOME_COMPLETO: TStringField
      FieldName = 'NOME_COMPLETO'
      Origin = 'NOME_COMPLETO'
      Size = 1000
    end
    object tbCadUsuarioDATA_NASC: TDateField
      FieldName = 'DATA_NASC'
      Origin = 'DATA_NASC'
    end
    object tbCadUsuarioCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Size = 11
    end
    object tbCadUsuarioID_CONTATO: TIntegerField
      FieldName = 'ID_CONTATO'
      Origin = 'ID_CONTATO'
    end
    object tbCadUsuarioLOGIN: TStringField
      FieldName = 'LOGIN'
      Origin = 'LOGIN'
      Size = 100
    end
  end
end
