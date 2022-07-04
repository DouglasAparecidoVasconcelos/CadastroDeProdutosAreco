object frmCadProduto: TfrmCadProduto
  Left = 0
  Top = 0
  Caption = 'Cadastro de Produtos'
  ClientHeight = 330
  ClientWidth = 495
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 495
    Height = 330
    Align = alClient
    TabOrder = 0
    ExplicitLeft = -8
    ExplicitTop = 8
    object DBNavigator1: TDBNavigator
      Left = 2
      Top = 15
      Width = 491
      Height = 33
      DataSource = dsProduto
      Align = alTop
      Hints.Strings = (
        'Primeiro registro'
        'Registro anterior'
        'Proximo registro'
        'Ultimo registro'
        'Inserir registro'
        'Excluir registro'
        'Editar registro'
        'Gravar registro'
        'Cancelar edi'#231#245'es'
        'Atualizar'
        'Apply updates'
        'Cancel updates')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      ExplicitLeft = -18
      ExplicitTop = 38
    end
    object GroupBox2: TGroupBox
      Left = 2
      Top = 48
      Width = 491
      Height = 280
      Align = alClient
      Caption = '::.Dados.::'
      TabOrder = 1
      ExplicitLeft = 66
      ExplicitTop = 254
      ExplicitWidth = 185
      ExplicitHeight = 105
      DesignSize = (
        491
        280)
      object Label1: TLabel
        Left = 16
        Top = 58
        Width = 23
        Height = 13
        Caption = 'C'#243'd.'
      end
      object Label3: TLabel
        Left = 16
        Top = 108
        Width = 46
        Height = 13
        Caption = 'Descri'#231#227'o'
      end
      object label9: TLabel
        Left = 16
        Top = 157
        Width = 39
        Height = 13
        Caption = 'Unidade'
      end
      object Label2: TLabel
        Left = 73
        Top = 157
        Width = 73
        Height = 13
        Caption = 'Pre'#231'o de Custo'
      end
      object Label5: TLabel
        Left = 176
        Top = 157
        Width = 75
        Height = 13
        Caption = 'Pre'#231'o de Venda'
      end
      object Label6: TLabel
        Left = 288
        Top = 157
        Width = 83
        Height = 13
        Caption = 'Qtde em Estoque'
      end
      object Label7: TLabel
        Left = 400
        Top = 157
        Width = 22
        Height = 13
        Caption = 'NCM'
      end
      object dbCodigo: TDBEdit
        Left = 16
        Top = 77
        Width = 49
        Height = 21
        DataField = 'ID_PRODUTO'
        DataSource = dsProduto
        Enabled = False
        TabOrder = 0
      end
      object dbDescricao: TDBEdit
        Left = 16
        Top = 127
        Width = 457
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        CharCase = ecUpperCase
        DataField = 'DESCRICAO'
        DataSource = dsProduto
        TabOrder = 1
      end
      object dbPrecoCusto: TDBEdit
        Left = 73
        Top = 176
        Width = 81
        Height = 21
        DataField = 'PRECO_CUSTO'
        DataSource = dsProduto
        TabOrder = 2
      end
      object dbPrecoVenda: TDBEdit
        Left = 176
        Top = 176
        Width = 81
        Height = 21
        DataField = 'PRECO_VENDA'
        DataSource = dsProduto
        TabOrder = 3
      end
      object dbQtedeEstoque: TDBEdit
        Left = 288
        Top = 176
        Width = 73
        Height = 21
        DataField = 'QTDE_ESTOQUE'
        DataSource = dsProduto
        TabOrder = 4
      end
      object dbNcm: TDBEdit
        Left = 400
        Top = 176
        Width = 73
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        DataField = 'NCM'
        DataSource = dsProduto
        TabOrder = 5
      end
      object dbCmbUnidade: TDBComboBox
        Left = 16
        Top = 176
        Width = 43
        Height = 21
        DataField = 'UNIDADE'
        DataSource = dsProduto
        Items.Strings = (
          'KG'
          'PC'
          'UN'
          'MM'
          'CM'
          'M')
        TabOrder = 6
      end
    end
  end
  object dsProduto: TDataSource
    DataSet = dmCadProduto.tbCadProduto
    Left = 392
    Top = 16
  end
end