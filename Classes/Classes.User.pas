unit Classes.User;

interface

type
  TUser = class
  strict private
    FId: Integer;
    FName: String;
    FUserName: String;
    FEmail: String;
    FPhone: String;
  public
    property Id: Integer read FId write FId;
    property Name: String read FName write FName;
    property UserName: String read FUserName write FUserName;
    property Email: String read FEmail write FEmail;
    property Phone: String read FPhone write FPhone;
  end;

implementation

end.
