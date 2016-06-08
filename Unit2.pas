unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm2 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);

  
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}
uses Main;



procedure TForm2.Button1Click(Sender: TObject);
begin

if Edit1.Text ='1' then
  begin
    Form1.MExMode.Click;
    Form1.MExMode.Checked :=true;
    Form1.MExMode.Enabled :=true;
    //Form1.MvisASDKU.Click;
  end
else
Form1.MExMode.Enabled :=false;


Form2.Visible :=false;
Form1.ShowModal;
Form2.Close;
end;



end.
