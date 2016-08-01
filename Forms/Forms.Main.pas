unit Forms.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  IPPeerClient, REST.Client, Data.Bind.Components, Data.Bind.ObjectScope, System.JSON;

type
  TMainForm = class(TForm)
    IdLabel: TLabel;
    IdEdit: TEdit;
    NameLabel: TLabel;
    NameEdit: TEdit;
    UserNameLabel: TLabel;
    UserNameEdit: TEdit;
    EmailLabel: TLabel;
    EmailEdit: TEdit;
    PhoneLabel: TLabel;
    PhoneEdit: TEdit;
    Memo: TMemo;
    GetButton: TButton;
    RESTClient: TRESTClient;
    RESTRequest: TRESTRequest;
    RESTResponse: TRESTResponse;
    procedure GetButtonClick(Sender: TObject);
  private
    function GetUser(const id: Integer): TJSONValue;
    procedure LoadUser(const json: string);
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

uses
  Classes.User,
  REST.Json;

{$R *.dfm}

procedure TMainForm.GetButtonClick(Sender: TObject);
var
  json: string;
  id: Integer;
begin
  id := StrToIntDef(InputBox('Informe o Id do Usuário', 'Id', '0'), 0);

  if id > 0 then
  begin
    json := GetUser(id).ToString();
    LoadUser(json);
    Memo.Text := json;
  end;
end;

function TMainForm.GetUser(const id: Integer): TJSONValue;
begin
  RESTRequest.Resource := 'users';
  RESTRequest.ResourceSuffix := id.ToString();

  RESTRequest.Execute();

  Result := RESTResponse.JSONValue;
end;

procedure TMainForm.LoadUser(const json: string);
var
  user: TUser;
begin
  user := TJson.JsonToObject<TUser>(json);
  try
    IdEdit.Text := user.Id.ToString();
    NameEdit.Text := user.Name;
    UserNameEdit.Text := user.UserName;
    EmailEdit.Text := user.Email;
    PhoneEdit.Text := user.Phone;
  finally
    user.Free;
  end;
end;

end.
