object frmCadUsuario: TfrmCadUsuario
  Left = 0
  Top = 0
  Caption = 'Cadastro de Usuarios'
  ClientHeight = 323
  ClientWidth = 513
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 513
    Height = 323
    Align = alClient
    TabOrder = 0
    object DBNavigator1: TDBNavigator
      Left = 2
      Top = 15
      Width = 509
      Height = 33
      DataSource = dsUsuario
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
    end
    object GroupBox2: TGroupBox
      Left = 2
      Top = 48
      Width = 509
      Height = 169
      Align = alTop
      Caption = '::.Dados.::'
      TabOrder = 1
      DesignSize = (
        509
        169)
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 23
        Height = 13
        Caption = 'C'#243'd.'
      end
      object Label3: TLabel
        Left = 16
        Top = 66
        Width = 75
        Height = 13
        Caption = 'Nome Completo'
      end
      object Label2: TLabel
        Left = 16
        Top = 115
        Width = 130
        Height = 13
        Caption = 'CPF (Utilizado como senha)'
      end
      object Label5: TLabel
        Left = 176
        Top = 115
        Width = 25
        Height = 13
        Caption = 'Login'
      end
      object Label6: TLabel
        Left = 288
        Top = 115
        Width = 91
        Height = 13
        Caption = 'Data de Nacimento'
      end
      object dbCodigo: TDBEdit
        Left = 16
        Top = 35
        Width = 49
        Height = 21
        DataField = 'ID_USUARIO'
        DataSource = dsUsuario
        Enabled = False
        TabOrder = 0
      end
      object dbDescricao: TDBEdit
        Left = 16
        Top = 85
        Width = 475
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        DataField = 'NOME_COMPLETO'
        DataSource = dsUsuario
        TabOrder = 1
      end
      object dbPrecoCusto: TDBEdit
        Left = 16
        Top = 134
        Width = 130
        Height = 21
        DataField = 'CPF'
        DataSource = dsUsuario
        TabOrder = 2
      end
      object dbPrecoVenda: TDBEdit
        Left = 176
        Top = 134
        Width = 81
        Height = 21
        DataField = 'LOGIN'
        DataSource = dsUsuario
        TabOrder = 3
      end
      object dbQtedeEstoque: TDBEdit
        Left = 288
        Top = 134
        Width = 73
        Height = 21
        DataField = 'DATA_NASC'
        DataSource = dsUsuario
        TabOrder = 4
      end
    end
    object DBGrid1: TDBGrid
      Left = 2
      Top = 217
      Width = 509
      Height = 104
      Align = alClient
      DataSource = dsUsuario
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_USUARIO'
          Title.Caption = 'C'#243'd.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME_COMPLETO'
          Title.Caption = 'Nome Completo'
          Width = 1000
          Visible = True
        end>
    end
  end
  object dsUsuario: TDataSource
    AutoEdit = False
    DataSet = dmCadUsuario.tbCadUsuario
    Left = 424
    Top = 56
  end
end
