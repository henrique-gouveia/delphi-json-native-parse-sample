object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'REST Object Parse'
  ClientHeight = 337
  ClientWidth = 484
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    484
    337)
  PixelsPerInch = 96
  TextHeight = 13
  object NameLabel: TLabel
    Left = 66
    Top = 18
    Width = 27
    Height = 13
    Caption = 'Name'
  end
  object IdLabel: TLabel
    Left = 8
    Top = 18
    Width = 10
    Height = 13
    Caption = 'Id'
  end
  object UserNameLabel: TLabel
    Left = 8
    Top = 59
    Width = 52
    Height = 13
    Caption = 'User Name'
  end
  object EmailLabel: TLabel
    Left = 144
    Top = 59
    Width = 24
    Height = 13
    Caption = 'Email'
  end
  object PhoneLabel: TLabel
    Left = 350
    Top = 59
    Width = 30
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'Phone'
  end
  object Memo: TMemo
    AlignWithMargins = True
    Left = 3
    Top = 129
    Width = 478
    Height = 205
    Align = alBottom
    Lines.Strings = (
      '')
    TabOrder = 0
  end
  object NameEdit: TEdit
    Left = 66
    Top = 32
    Width = 410
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 1
  end
  object IdEdit: TEdit
    Left = 8
    Top = 32
    Width = 52
    Height = 21
    NumbersOnly = True
    TabOrder = 2
  end
  object UserNameEdit: TEdit
    Left = 8
    Top = 72
    Width = 130
    Height = 21
    TabOrder = 3
  end
  object EmailEdit: TEdit
    Left = 144
    Top = 72
    Width = 200
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 4
  end
  object PhoneEdit: TEdit
    Left = 350
    Top = 72
    Width = 126
    Height = 21
    Anchors = [akTop, akRight]
    TabOrder = 5
  end
  object GetButton: TButton
    Left = 8
    Top = 98
    Width = 75
    Height = 25
    Caption = 'GET'
    TabOrder = 6
    OnClick = GetButtonClick
  end
  object RESTClient: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'UTF-8, *;q=0.8'
    BaseURL = 'http://jsonplaceholder.typicode.com'
    Params = <>
    HandleRedirects = True
    RaiseExceptionOn500 = False
    Left = 416
    Top = 160
  end
  object RESTRequest: TRESTRequest
    Client = RESTClient
    Params = <
      item
      end>
    Response = RESTResponse
    SynchronizedEvents = False
    Left = 416
    Top = 216
  end
  object RESTResponse: TRESTResponse
    ContentType = 'application/json'
    Left = 416
    Top = 264
  end
end
