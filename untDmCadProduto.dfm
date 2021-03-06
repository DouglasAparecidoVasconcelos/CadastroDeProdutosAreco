object dmCadProduto: TdmCadProduto
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 205
  Width = 241
  object tbCadProduto: TFDTable
    Connection = DmPrincipal.FDConnection1
    UpdateOptions.UpdateTableName = 'CADASTRO_ARECO.dbo.PRODUTO'
    TableName = 'CADASTRO_ARECO.dbo.PRODUTO'
    Left = 88
    Top = 72
    object tbCadProdutoID_PRODUTO: TFDAutoIncField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ReadOnly = True
    end
    object tbCadProdutoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 5000
    end
    object tbCadProdutoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      FixedChar = True
      Size = 2
    end
    object tbCadProdutoPRECO_VENDA: TCurrencyField
      FieldName = 'PRECO_VENDA'
      Origin = 'PRECO_VENDA'
    end
    object tbCadProdutoPRECO_CUSTO: TCurrencyField
      FieldName = 'PRECO_CUSTO'
      Origin = 'PRECO_CUSTO'
    end
    object tbCadProdutoQTDE_ESTOQUE: TIntegerField
      FieldName = 'QTDE_ESTOQUE'
      Origin = 'QTDE_ESTOQUE'
    end
    object tbCadProdutoNCM: TIntegerField
      FieldName = 'NCM'
      Origin = 'NCM'
    end
  end
end
