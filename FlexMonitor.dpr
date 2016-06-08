program FlexMonitor;

uses
  Forms,
  Main in 'Main.pas' {Form1},
  Unit2 in 'Unit2.pas' {Form2},
  Unit3 in 'Unit3.pas' {F_SNMP},
  Unit4 in 'Unit4.pas' {Form4};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Monitoring FlexDSL';
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TF_SNMP, F_SNMP);
  Application.CreateForm(TForm4, Form4);
  Application.Run;
end.
