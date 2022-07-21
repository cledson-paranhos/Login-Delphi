program LoginApp;

uses
  Vcl.Forms,
  UFrmPrincipal in 'UFrmPrincipal.pas' {FrmLoginPrincipal},
  UFrmLoginRealizado in 'UFrmLoginRealizado.pas' {FrmLoginRealizado};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmLoginPrincipal, FrmLoginPrincipal);
  Application.CreateForm(TFrmLoginRealizado, FrmLoginRealizado);
  Application.Run;
end.
