object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 665
  ClientWidth = 864
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 12
    Top = 166
    Width = 47
    Height = 13
    Caption = 'Master ID'
  end
  object Label2: TLabel
    Left = 144
    Top = 166
    Width = 89
    Height = 13
    Caption = 'Master Description'
  end
  object Label3: TLabel
    Left = 12
    Top = 208
    Width = 41
    Height = 13
    Caption = 'Client ID'
  end
  object Label4: TLabel
    Left = 144
    Top = 208
    Width = 83
    Height = 13
    Caption = 'Client Description'
  end
  object Label5: TLabel
    Left = 12
    Top = 252
    Width = 76
    Height = 13
    Caption = 'Master Register'
  end
  object Label6: TLabel
    Left = 144
    Top = 252
    Width = 71
    Height = 13
    Caption = 'Master Update'
  end
  object Label7: TLabel
    Left = 8
    Top = 299
    Width = 33
    Height = 13
    Caption = 'Detail'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 668
    Top = 417
    Width = 61
    Height = 13
    Caption = 'Total Pre'#231'o :'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 4
    Width = 848
    Height = 121
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 440
    Width = 840
    Height = 25
    DataSource = DataSource1
    TabOrder = 1
  end
  object Button2: TButton
    Left = 8
    Top = 471
    Width = 113
    Height = 25
    Caption = 'ApplyUpdates'
    TabOrder = 2
    OnClick = Button2Click
  end
  object DBGrid2: TDBGrid
    Left = 8
    Top = 313
    Width = 848
    Height = 96
    DataSource = DataSource2
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBEdit1: TDBEdit
    Left = 12
    Top = 182
    Width = 121
    Height = 21
    DataField = 'master_id'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBEdit2: TDBEdit
    Left = 144
    Top = 182
    Width = 712
    Height = 21
    DataField = 'description'
    DataSource = DataSource1
    TabOrder = 5
  end
  object DBEdit3: TDBEdit
    Left = 12
    Top = 224
    Width = 121
    Height = 21
    DataField = 'client_id'
    DataSource = DataSource1
    TabOrder = 6
  end
  object DBEdit4: TDBEdit
    Left = 144
    Top = 224
    Width = 601
    Height = 21
    DataField = 'client_name'
    DataSource = DataSource3
    Enabled = False
    TabOrder = 7
  end
  object DBEdit5: TDBEdit
    Left = 12
    Top = 268
    Width = 121
    Height = 21
    DataField = 'registerdate'
    DataSource = DataSource1
    TabOrder = 8
  end
  object DBEdit6: TDBEdit
    Left = 144
    Top = 268
    Width = 121
    Height = 21
    DataField = 'updatedate'
    DataSource = DataSource1
    TabOrder = 9
  end
  object DBEdit7: TDBEdit
    Left = 735
    Top = 413
    Width = 121
    Height = 21
    DataField = 'AGGPRICE'
    DataSource = DataSource2
    TabOrder = 10
  end
  object Button1: TButton
    Left = 134
    Top = 471
    Width = 75
    Height = 25
    Caption = 'Object Post'
    TabOrder = 11
    OnClick = Button1Click
  end
  object DBImage1: TDBImage
    Left = 751
    Top = 206
    Width = 105
    Height = 105
    BorderStyle = bsNone
    Ctl3D = True
    DataField = 'client_foto'
    ParentColor = True
    ParentCtl3D = False
    TabOrder = 12
  end
  object Memo1: TMemo
    AlignWithMargins = True
    Left = 3
    Top = 503
    Width = 858
    Height = 159
    Align = alBottom
    Lines.Strings = (
      'Memo1')
    TabOrder = 13
  end
  object DataSource1: TDataSource
    DataSet = FDMaster
    Left = 424
    Top = 60
  end
  object DataSource2: TDataSource
    DataSet = FDDetail
    Left = 422
    Top = 146
  end
  object DataSource3: TDataSource
    AutoEdit = False
    DataSet = FDClient
    Left = 426
    Top = 202
  end
  object FDMaster: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 356
    Top = 62
  end
  object FDDetail: TFDMemTable
    AggregatesActive = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 356
    Top = 148
  end
  object FDClient: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 354
    Top = 202
  end
  object FDLookup: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 354
    Top = 256
  end
  object RESTClientMARS1: TRESTClientMARS
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Protocol = Http
    Host = 'localhost'
    Port = 211
    MethodGETId = 'selectid'
    MethodGETWhere = 'selectwhere'
    MethodGETNextPacket = 'nextpacket'
    MethodGETNextPacketWhere = 'nextpacketwhere'
    APIContext = 'default/ormbr'
    RESTContext = 'rest'
    MethodToken = 'token'
    ORMBrServerUse = True
    Left = 62
    Top = 44
  end
end
