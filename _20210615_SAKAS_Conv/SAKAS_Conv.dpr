program SAKAS_Conv;

uses
  Vcl.Forms,
  main in 'main.pas' {Form_Main},
  Unit_LP in 'Unit_LP.pas' {Form_LP},
  Unit_PW in 'Unit_PW.pas' {Form_PW},
  Unit_Tag in 'Unit_Tag.pas' {Form_Tag},
  SelShape in 'SelShape.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm_Main, Form_Main);
  Application.CreateForm(TForm_PW, Form_PW);
  Application.CreateForm(TForm_Tag, Form_Tag);
  Application.Run;
end.
