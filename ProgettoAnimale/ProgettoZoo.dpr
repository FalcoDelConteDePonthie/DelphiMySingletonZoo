program ProgettoZoo;

uses
  Vcl.Forms,
  Zoo in 'Zoo.pas' {Form5} ,
  Camaleonte in 'Animale\Camaleonte.pas',
  Animale in 'Animale\Animale.pas',
  Cane in 'Animale\Cane.pas',
  Gatto in 'Animale\Gatto.pas',
  AnimaliDelloZoo in 'Singleton\AnimaliDelloZoo.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm5, Form5);
  Application.Run;

end.
