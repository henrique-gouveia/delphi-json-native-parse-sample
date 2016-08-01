program RESTObjectParse;

uses
  Vcl.Forms,
  Classes.User in 'Classes\Classes.User.pas',
  Forms.Main in 'Forms\Forms.Main.pas' {MainForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
