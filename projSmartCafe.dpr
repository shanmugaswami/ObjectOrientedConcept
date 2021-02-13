program projSmartCafe;

uses
  Vcl.Forms,
  usmartCafe in 'usmartCafe.pas' {frmSmartCafe},
  uClasses in 'uClasses.pas',
  uMenu in 'uMenu.pas' {frmMenu};


{$R *.res}


begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmSmartCafe, frmSmartCafe);
  Application.Run;
end.
