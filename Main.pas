unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, WinSock, StdCtrls, Buttons, ExtCtrls, jpeg, ComCtrls, ShellApi,
  Menus, Mask, Grids, pingsend, ToolWin;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Image3: TImage;
    Label2: TLabel;
    Label3: TLabel;
    Image7: TImage;
    Image1: TImage;
    Image2: TImage;
    Image4: TImage;
    Image5: TImage;
    Label4: TLabel;
    StatusBar1: TStatusBar;
    TimeT: TTimer;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    MExit: TMenuItem;
    BBIntervalCheck: TBitBtn;
    Image6: TImage;
    Memo1: TMemo;       //���� ��� ������ ���������� � �����������
    GroupBox1: TGroupBox;   //���������� ����������� ��� ������ ����� � ��������� ������
    RadioButton1: TRadioButton;  //����������� ��� ����� ���������� �������
    RadioButton2: TRadioButton;  //����������� ��� ����� ���������� �������
    RadioButton3: TRadioButton;   //����������� ��� ����� ���������� �������
    RadioButton4: TRadioButton;   //����������� ��� ����� ���������� �������
    BitBtn13: TBitBtn;
    SZGU1: TShape;     //������ ���� - ��� ����������� ��������� ������ �� ���� ����� �� ���
    SG320: TShape;     //������ ���� - ��� ����������� ��������� ������ �� ���� ����� �� ���32
    SG322: TShape;     //������ ���� - ��� ����������� ��������� ������ �� ���� ����� �� ���32
    SG332: TShape;     //������ ���� - ��� ����������� ��������� ������ �� ���� ����� �� ���33
    SK2: TShape;   //������ ���� - ��� ����������� ��������� ������ �� ���� ����� � ���������
    SK1: TShape;   //������ ���� - ��� ����������� ��������� ������ �� ���� ����� � ���������
    PMZGU: TPopupMenu;
    P1: TMenuItem;
    S1: TMenuItem;
    PMK1: TPopupMenu;
    PMK2: TPopupMenu;
    PMG321: TPopupMenu;
    PMG322: TPopupMenu;
    PMG331: TPopupMenu;
    P2: TMenuItem;
    S2: TMenuItem;
    P3: TMenuItem;
    S3: TMenuItem;
    P4: TMenuItem;
    S4: TMenuItem;
    P5: TMenuItem;
    S5: TMenuItem;
    P6: TMenuItem;
    S6: TMenuItem;
    N17: TMenuItem;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Shape8: TShape;
    Shape9: TShape;
    Shape10: TShape;
    Shape11: TShape;
    Shape12: TShape;
    Shape13: TShape;
    Shape14: TShape;
    Shape15: TShape;
    Shape16: TShape;
    Shape17: TShape;
    Shape18: TShape;
    Shape19: TShape;
    Shape20: TShape;
    Shape21: TShape;
    Shape22: TShape;
    Shape23: TShape;
    T1: TMenuItem;
    T2: TMenuItem;
    T3: TMenuItem;
    T4: TMenuItem;
    T5: TMenuItem;
    T6: TMenuItem;
    PingTimer: TTimer;
    Label5: TLabel;
    MaskEdit1: TMaskEdit;
    UpDown1: TUpDown;
    Label6: TLabel;
    Label7: TLabel;
    MaskEdit2: TMaskEdit;
    Label8: TLabel;
    UpDown2: TUpDown;
    GroupBox3: TGroupBox;
    BBOneCheck: TBitBtn;  //������ ��� ������� ��������� �������� ��������� ��������� �����
    RepaintTimer: TTimer;
    MOneCheck: TMenuItem;
    MExMode: TMenuItem;
    StringGrid1: TStringGrid;
    C7: TShape;
    C8: TShape;
    C9: TShape;
    C1: TShape;
    C2: TShape;
    C3: TShape;
    C4: TShape;
    C5: TShape;
    C6: TShape;
    BBAsdkucheck: TBitBtn;    //������ ��� ������� ��������� �������� ��������� ��������� �����
    ListBox1: TListBox;
    IA1: TImage;
    IA7: TImage;
    IA8: TImage;
    IA9: TImage;
    IA4: TImage;
    IA5: TImage;
    IA6: TImage;
    IA3: TImage;
    IA2: TImage;
    BBDoubleCheck: TBitBtn;
    AsdkuTimer: TTimer;
    N2: TMenuItem;
    Label9: TLabel;
    LNS23: TLabel;
    MScreenS: TMenuItem;
    CB_logA: TCheckBox;
    CB_logS: TCheckBox;
    LA2: TLabel;
    LA4: TLabel;
    LA5: TLabel;
    LA6: TLabel;
    SL5: TShape;
    SL6: TShape;
    LA3: TLabel;
    SL3: TShape;
    SL2: TShape;
    SL7: TShape;
    SL4: TShape;
    LA8: TLabel;
    LA9: TLabel;
    LA7: TLabel;
    LA1: TLabel;
    SL9: TShape;
    SL8: TShape;
    SL1: TShape;
    c_ToolBar1: TToolBar;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Shape24: TShape;
    Shape25: TShape;
    Shape26: TShape;
    Label10: TLabel;
    Label11: TLabel;
    Shape27: TShape;
    Label12: TLabel;
    Label13: TLabel;
    GroupBox2: TGroupBox;
    MvisASDKU: TMenuItem;
    Mintcheck: TMenuItem;
    Button1: TButton;
    N3: TMenuItem;
    N4: TMenuItem;
    eKP: TMaskEdit;
    UeKP: TUpDown;
    SpeedButton1: TSpeedButton;
    N5: TMenuItem;
    SpeedButton2: TSpeedButton;
    N6: TMenuItem;
    PopupMenu1: TPopupMenu;
    N7: TMenuItem;
    procedure BBStopIntCheckClick(Sender: TObject);
    procedure TimeTTimer(Sender: TObject);
    procedure MExitClick(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure P1Click(Sender: TObject);
    procedure S1Click(Sender: TObject);
    procedure S4Click(Sender: TObject);
    procedure P4Click(Sender: TObject);
    procedure P5Click(Sender: TObject);
    procedure S5Click(Sender: TObject);
    procedure S6Click(Sender: TObject);
    procedure P6Click(Sender: TObject);
    procedure P2Click(Sender: TObject);
    procedure S2Click(Sender: TObject);
    procedure P3Click(Sender: TObject);
    procedure S3Click(Sender: TObject);
    procedure T1Click(Sender: TObject);
    procedure T2Click(Sender: TObject);
    procedure T3Click(Sender: TObject);
    procedure T4Click(Sender: TObject);
    procedure T5Click(Sender: TObject);
    procedure T6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BBIntervalCheckClick(Sender: TObject);
    procedure BBOneCheckClick(Sender: TObject);
    procedure RepaintTimerTimer(Sender: TObject);
    procedure MExModeClick(Sender: TObject);
    procedure BBAsdkucheckClick(Sender: TObject);
  //  procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
  //    Rect: TRect; State: TGridDrawState);
    procedure BBDoubleCheckClick(Sender: TObject);
    procedure MScreenSClick(Sender: TObject);
    procedure MvisASDKUClick(Sender: TObject);
    procedure MintcheckClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);



  private
{ Private declarations }
MyPing :Tpingsend;
procedure log_err(error:string);
procedure DrawLineZ(color:Tcolor);
procedure DrawLineG32(color:Tcolor);
procedure DrawLineG33(color:Tcolor);
procedure StatusMsg(msg:integer);

  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  colorG2, colorG3, colorZ: Tcolor;
  i_c,dostup: boolean;
  ips: array of string;   //����� � ip ��������
  FShapes, SLs : array [1..9] of TShape;    //����� ����� ��� ����������� ��������� ������������ ����� �� ��������
  str: string;

implementation

uses DateUtils, Unit2, Unit3, Unit4;

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var
i:integer;
begin
MyPing  :=  Tpingsend.Create;
MyPing.PacketSize :=  2;  //��������� ������� ������ ��� �����

//������������� ����� ������� ������ ���������� �������  � ������
SetLength(ips, ListBox1.Items.Count);

//��������� ������ ip �������
for i :=  0 to high(ips) do
begin
ips[i]  :=  ListBox1.Items[i];
end;
eKP.Text := '1';

//��������� ������ ����� ��� ��������� ��������� ������������ �����
FShapes[1]  :=  C1;
FShapes[2]  :=  C2;
FShapes[3]  :=  C3;
FShapes[4]  :=  C4;
FShapes[5]  :=  C5;
FShapes[6]  :=  C6;
FShapes[7]  :=  C7;
FShapes[8]  :=  C8;
FShapes[9]  :=  C9;
SLs[1] := SL1;
SLs[2] := SL2;
SLs[3] := SL3;
SLs[4] := SL4;
SLs[5] := SL5;
SLs[6] := SL6;
SLs[7] := SL7;
SLs[8] := SL8;
SLs[9] := SL9;

for i :=1 to 9 do
begin
SLs[i].Visible := false;
end;

//��������� �������
PingTimer.Enabled :=false;
AsdkuTimer.Enabled :=false;
RepaintTimer.Enabled :=false;

//���������� �����
colorZ := clGray;
colorG2 := clGray;
colorG3 := clGray;
DrawLineZ(colorZ);
DrawLineG32(colorG2);
DrawLineG33(colorG3);

Application.ProcessMessages;   //����������� �� ������ ����������� ��������

//������������� �������� �� ���������
StringGrid1.Visible :=false;
Form1.Width :=1030;
StringGrid1.Cells[0,0]:= '���';
StringGrid1.Cells[0,1]:= '���';
StringGrid1.Cells[0,2]:= '���32';
StringGrid1.Cells[0,3]:= '���33';
StringGrid1.Cells[0,4]:= '���33';
StringGrid1.Cells[0,5]:= '���33';
StringGrid1.Cells[0,6]:= '��23';
//StringGrid1.Cells[0,7]:= '��23';
//StringGrid1.Cells[0,8]:= '��23';
//MExMode.Click;
StatusMsg(0);     //'���������: �����������';
end;

procedure TForm1.BBStopIntCheckClick(Sender: TObject); //��������� ������� �� ������ "����������"
begin
  i_c := false;
  PingTimer.Enabled :=False;
  RepaintTimer.Enabled :=false;
  StatusMsg(0); //'���������: �����������';
  CB_logA.Checked :=false;
  CB_logS.Checked :=false;
end;

procedure TForm1.TimeTTimer(Sender: TObject);
begin
StatusBar1.Panels[0].Text := '����: ' +datetostr(now)+'; �����: ' +timetostr(now);
end;

procedure TForm1.MExitClick(Sender: TObject);
begin
Application.Terminate; //����� �� ����������
end;

procedure TForm1.BitBtn13Click(Sender: TObject);
begin
 if  RadioButton1.Checked then
 WinExec(PAnsiChar('ping.exe 192.168.3.5 -t -l 2'), sw_show)
    else
    begin
      if  RadioButton2.Checked then
        WinExec(PAnsiChar('ping.exe 192.168.3.14 -t -l 2'), sw_show)
        else
         begin
            if  RadioButton4.Checked then
            WinExec(PAnsiChar('ping.exe 192.168.3.31 -t -l 2'), sw_show)
          else
             begin
                if  RadioButton3.Checked then
                 WinExec(PAnsiChar('ping.exe 192.168.3.34 -t -l 2'), sw_show)
              else
              ShowMessage('�� ������� �� ������ ����!');
             end;
        end;
    end;
end;

//��������� ������� ������� ���� � ��������� ������
procedure TForm1.P1Click(Sender: TObject);
begin
WinExec(PAnsiChar('ping.exe 192.168.3.5 -t -l 2'), sw_show);
end;

procedure TForm1.P4Click(Sender: TObject);
begin
WinExec(PAnsiChar('ping.exe 192.168.3.14 -t -l 2'), sw_show);
end;

procedure TForm1.P5Click(Sender: TObject);
begin
WinExec(PAnsiChar('ping.exe 192.168.3.31 -t -l 2'), sw_show);
end;

procedure TForm1.P6Click(Sender: TObject);
begin
WinExec(PAnsiChar('ping.exe 192.168.3.34 -t -l 2'), sw_show);
end;

procedure TForm1.P2Click(Sender: TObject);
begin
WinExec(PAnsiChar('ping.exe 192.168.3.1 -t -l 2'), sw_show);
end;

procedure TForm1.P3Click(Sender: TObject);
begin
 WinExec(PAnsiChar('ping.exe 192.168.3.11 -t -l 2'), sw_show);
end;

//��������� ������� ������� ������ �� �����������
procedure TForm1.S1Click(Sender: TObject);
begin
ShellExecute(0, 'open', 'http://192.168.3.5/', nil, nil, SW_SHOW);
end;

procedure TForm1.S4Click(Sender: TObject);
begin
 ShellExecute(0, 'open', 'http://192.168.3.14/', nil, nil, SW_SHOW);
end;

procedure TForm1.S5Click(Sender: TObject);
begin
ShellExecute(0, 'open', 'http://192.168.3.31/', nil, nil, SW_SHOW);
end;

procedure TForm1.S6Click(Sender: TObject);
begin
ShellExecute(0, 'open', 'http://192.168.3.34/', nil, nil, SW_SHOW);
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);   //�������� ��� �����
var
pn: string;

begin
  try
   // pn:=PWideChar(ExtractFilePath(Application.ExeName))+ '\log_error_monitoring.txt';
    ShellExecute(Handle, 'open', 'c:\windows\notepad.exe', PWideChar(ExtractFilePath(Application.ExeName)+ '\log_error_monitoring.txt') ,nil,SW_SHOWNORMAL);
    except
        ShowMessage('��������!'+#13#10+'��������� ������ ��� �������� ���������� �����! ��������� ��������� ������� � ����� ������� ���������');
        ShowMessage('��� ����� �� ����������. ��� �� ��� ������'+#13+'��������, �� ���� ������ �����, ��� �� ���� ���������� ������� ������ � ���!');
    end;

end;

procedure TForm1.S2Click(Sender: TObject);
begin
ShellExecute(0, 'open', 'http://192.168.3.1/', nil, nil, SW_SHOW);
end;

procedure TForm1.S3Click(Sender: TObject);
begin
ShellExecute(0, 'open', 'http://192.168.3.11/', nil, nil, SW_SHOW);
end;

//��������� ������� ������� �� ������ � �����������
procedure TForm1.T1Click(Sender: TObject);
begin
WinExec(PAnsiChar('telnet.exe 192.168.3.5'), sw_show);
end;

procedure TForm1.T2Click(Sender: TObject);
begin
WinExec(PAnsiChar('telnet.exe 192.168.3.1'), sw_show);
end;

procedure TForm1.T3Click(Sender: TObject);
begin
WinExec(PAnsiChar('telnet.exe 192.168.3.11'), sw_show);
end;

procedure TForm1.T4Click(Sender: TObject);
begin
WinExec(PAnsiChar('telnet.exe 192.168.3.14'), sw_show);
end;

procedure TForm1.T5Click(Sender: TObject);
begin
WinExec(PAnsiChar('telnet.exe 192.168.3.31'), sw_show);
end;

procedure TForm1.T6Click(Sender: TObject);
begin
WinExec(PAnsiChar('telnet.exe 192.168.3.34'), sw_show);
end;



procedure TForm1.BBIntervalCheckClick(Sender: TObject);
begin
 i_c := true;
 BBIntervalCheck.Cursor := crHourGlass;
 StatusMsg(3);    //���������: ����� ���������. ��������.
If  (strtoint(MaskEdit1.Text) = 0) and  (strtoint(MaskEdit2.Text) < 20)
   then
   begin
    ShowMessage('�������� �� ������ ���� ������ 20 ������. ������ �������� �� ����!');
     MaskEdit2.Text :='20';
   end
   else
    begin
      Form1.BBOneCheck.Click ;  //��������� ��������� ��������
      PingTimer.Interval :=strtoint(MaskEdit1.Text)*60000+strtoint(MaskEdit2.Text)*1000;   //������������� �������� �������
      PingTimer.Enabled :=true;     //��������� ������ �������� ������������ �����
      RepaintTimer.Enabled :=true;   //��������� ������ ����������� �����
    end;
 StatusMsg(2);         //'���������: ������� �������� ����������� ������������ ����� � ����������: '+ MaskEdit1.Text+' ��� '+MaskEdit2.Text+' c';
 BBIntervalCheck.Cursor := crHandPoint;
end;

procedure TForm1.BBOneCheckClick(Sender: TObject);   //��������� "���������" ��������
var
Host:string;
kp:integer;  //���������� ������
//erz, erg2, erg3:integer; //���������� ������������ �������
begin
Form1.Cursor := crHourGlass;
StatusBar1.Panels[1].Text := '���������: ����� ��������� FlexDSL. ��������...';
Application.ProcessMessages;


//����� ���
     try
        Host:='192.168.3.5';
        StatusBar1.Panels[1].Text := '���������: ����� ���������� '+Host;
        Application.ProcessMessages;
     kp:=1;
     while kp<=strtoint(eKP.Text) do
     begin
        MyPing.Ping(Host);
        if (MyPing.PingTime >= 0) and (MyPing.PingTime < 150)
        // if (PingHost(Host) >= 0) and (PingHost(Host) < 150)
          then
            begin
              SZGU1.Brush.Color := clLime;
              SK1.Brush.Color := clLime;
              colorZ :=clLime;
               Memo1.Lines.Add(timetostr(now)+': ����� �� ������ '+Host+' '+' ---> '+inttostr(MyPing.PingTime)+' ��');
              //Memo1.Lines.Add(timetostr(now)+': ����� �� ������ '+Host+' '+' ---> '+inttostr(PingHost(Host))+' ��');
            end
          else
          //if (PingHost(Host) > 150) and (PingHost(Host) < 1000)
            if (MyPing.PingTime > 150) and (MyPing.PingTime < 1000)
            then
              begin
                SZGU1.Brush.Color := clYellow;
                SK1.Brush.Color := clYellow;
                colorZ :=clYellow;
                str := timetostr(now)+': ����� �� ������ '+Host+' --> '+inttostr(MyPing.PingTime)+' ��';
                //str := timetostr(now)+': ����� �� ������ '+Host+' --> '+inttostr(PingHost(Host))+' ��';
                Memo1.Lines.Add(str);
                if CB_logS.Checked then  log_err(str);  //���� ������ ������� "����� ���" - �������� ������ � ���
              end
            else
              begin
                SZGU1.Brush.Color := clRed;
                SK1.Brush.Color := clRed;
                colorZ :=clRed;
                str :=timetostr(now)+': ����� '+Host+' �� ��������!';
                Memo1.Lines.Add(str);
                if CB_logS.Checked then   log_err(str);  //���� ������ ������� "����� ���" - �������� ������ � ���
              end;
              kp:=kp+1;
     end;
    DrawLineZ(colorZ); //������ ���������� �����
    Application.ProcessMessages;
    except
        ShowMessage('��������� ������ ��� ������� � ���');
    end;



//����� ���32
      try
        Host:='192.168.3.14';
        StatusBar1.Panels[1].Text := '���������: ����� ���������� '+Host;
        Application.ProcessMessages;
        kp:=1;
     while kp<=strtoint(eKP.Text) do
      begin
        MyPing.Ping(Host);
        if (MyPing.PingTime>= 0) and (MyPing.PingTime < 150)
        //if (PingHost(Host) >= 0) and (PingHost(Host) < 150)
          then
            begin
              SG322.Brush.Color := clLime;
              SG320.Brush.Color := clLime;
              SK2.Brush.Color := clLime;
              colorG2 := clLime;
              Memo1.Lines.Add(timetostr(now)+': ����� �� ������ '+Host+' '+' ---> '+inttostr(MyPing.PingTime)+' ��');
              //Memo1.Lines.Add(timetostr(now)+': ����� �� ������ '+Host+' '+' ---> '+inttostr(PingHost(Host))+' ��');
            end
          else
            if (MyPing.PingTime > 150) and (MyPing.PingTime < 1000)
          //if (PingHost(Host) > 150) and (PingHost(Host) < 1000)
            then
              begin
                SG322.Brush.Color := clYellow;
                SG320.Brush.Color := clYellow;
                SK2.Brush.Color := clYellow;
                colorG2 := clYellow;
                str := timetostr(now)+': ����� �� ������ '+Host+' --> '+inttostr(MyPing.PingTime)+' ��';
                //str :=timetostr(now)+': ����� �� ������ '+Host+' --> '+inttostr(PingHost(Host))+' ��';
                Memo1.Lines.Add(str);

                if CB_logS.Checked then   log_err(str);  //���� ������ ������� "����� ���" - �������� ������ � ���

              end
            else
              begin
              SG322.Brush.Color := clRed;
              SG320.Brush.Color := clRed;
              SK2.Brush.Color := clRed;
              colorG2 := clRed;
              str :=timetostr(now)+': ����� '+Host+' �� ��������!';
              Memo1.Lines.Add(str);

              if CB_logS.Checked then   log_err(str);  //���� ������ ������� "����� ���" - �������� ������ � ���

              end;
        kp:=kp+1;
        end;
    DrawLineG32(colorG2);   //������  ����� ��������� - ���32
    Application.ProcessMessages;
    except
        ShowMessage('��������� ������ ��� ������� � ���32');
    end;

 //����� ���33
      try
        Host:='192.168.3.34';
        StatusBar1.Panels[1].Text := '���������: ����� ���������� '+Host;
        Application.ProcessMessages;
        kp:=1;
        while kp<=strtoint(eKP.Text) do
        begin
          if (PingHost(Host) >= 0) and (PingHost(Host) < 150)
            then
              begin
                SG332.Brush.Color := clLime;
                colorG3 := clLime;
                Memo1.Lines.Add(timetostr(now)+': ����� �� ������ '+Host+' '+' ---> '+inttostr(MyPing.PingTime)+' ��');
                //Memo1.Lines.Add(timetostr(now)+': ����� �� ������: '+Host+' ---> '+inttostr(PingHost(Host))+' ��');
              end
            else
            if (PingHost(Host) > 150) and (PingHost(Host) < 1000)
            then
              begin
                SG332.Brush.Color := clYellow;
                colorG3 := clYellow;
                str := timetostr(now)+': ����� �� ������ '+Host+' --> '+inttostr(MyPing.PingTime)+' ��';
                //str :=timetostr(now)+': ����� �� ������ '+Host+' --> '+inttostr(PingHost(Host))+' ��';
                Memo1.Lines.Add(str);

                if CB_logS.Checked then   log_err(str);  //���� ������ ������� "����� ���" - �������� ������ � ���
              end
            else
              begin
               SG332.Brush.Color := clRed;
               colorG3 := clRed;
               //Memo1.Lines.Add(timetostr(now)+': ����� '+Host+' �� ��������!');
               str :=timetostr(now)+': ����� '+Host+' �� ��������!';
               Memo1.Lines.Add(str);
               if CB_logS.Checked then   log_err(str);  //���� ������ ������� "����� ���" - �������� ������ � ���

              end;
      kp:=kp+1;
   end;
   DrawLineG33(colorG3); //������  ����� ���32 - ���33

    Application.ProcessMessages;
    except
        ShowMessage('��������� ������ ��� ������� � ���33');
    end;
   Form1.Cursor := crDefault;
   Application.ProcessMessages;
   if i_c then  StatusBar1.Panels[1].Text := '���������: ������� �������� ����������� ������������ � ����������: '+ MaskEdit1.Text+' ��� '+MaskEdit2.Text+' c'
  else  StatusBar1.Panels[1].Text := '���������: �����������';
end;

procedure TForm1.RepaintTimerTimer(Sender: TObject);   //��������� ����������� ����� �� ���������� ���������� ������
begin
DrawLineG32(colorG2);   //������  ����� ��������� - ���32
DrawLineZ(colorZ);  //������ ���������� �����
DrawLineG33(colorG3); //������  ����� ���32 - ���33
end;

procedure TForm1.MExModeClick(Sender: TObject);
var
check:boolean;
begin

MExMode.Checked :=not MExMode.Checked ;
check:=MExMode.Checked;
if (MExMode.Checked = true) then
Form1.Caption :='�������� ��������� ������������ ����� � ����� - ������ ������'
else Form1.Caption :='�������� ��������� ������������ ����� � ����� (������ ��� ���) - ����������� ������';

  // 'Status' enabled
  Form1.S1.Enabled :=check;
  Form1.S2.Enabled :=check;;
  Form1.S3.Enabled :=check;
  Form1.S4.Enabled :=check;
  Form1.S5.Enabled :=check;
  Form1.S6.Enabled :=check;

  // 'Telnet' enabled
  Form1.T1.Enabled :=check;
  Form1.T2.Enabled :=check;;
  Form1.T3.Enabled :=check;
  Form1.T4.Enabled :=check;
  Form1.T5.Enabled :=check;
  Form1.T6.Enabled :=check;

  UpDown1.Enabled :=check;
  UpDown2.Enabled :=check;

  MaskEdit1.ReadOnly :=not check;
  MaskEdit2.ReadOnly :=not check;
  //eKP.Visible :=check;
  //UeKP.Visible :=check;
end;

procedure TForm1.BBAsdkucheckClick(Sender: TObject);
var
i:integer;
begin
Mintcheck.Checked:=true;
   begin
      //����������� ������� ��� ������ ���������� ��������� ������������ �����
    //  Form1.Width :=1230;
      //StringGrid1.ColWidths[1]:=100;
     // StringGrid1.Visible :=true;
      Image6.Cursor := crHourGlass;
      StatusBar1.Panels[1].Text := '���������: ����� ��������� �����. ��������.';
      Application.ProcessMessages;
       for i:= 0 to High(ips) do
        begin
         // StringGrid1.Cells[1,i]:= ips[i];
          StatusBar1.Panels[1].Text := '���������: ����� ����������: '+ ips[i]+ ' ��������';
          Application.ProcessMessages;
         try

            if (PingHost(ips[i])>=0) and (PingHost(ips[i])<100) then   //���� ����� �� ���� �� ����� 100��
            begin
           // StringGrid1.Cells[2,i] := 'ON';
            FShapes[i+1].Brush.Color :=clLime;
            SLs[i+1].Brush.Color :=clLime;
            SLs[i+1].Visible :=true;
            Memo1.Lines.Add(timetostr(now)+': ����� �� ������ '+ips[i]+' '+' ---> '+inttostr(PingHost(ips[i]))+' ��');
            Application.ProcessMessages;
             end
            else
            if (PingHost(ips[i])>=100) and (PingHost(ips[i])<1000) then
            begin
           // StringGrid1.Cells[2,i] := 'On';
            FShapes[i+1].Brush.Color :=clYellow;
            SLs[i+1].Brush.Color :=clYellow;
            SLs[i+1].Visible :=true;
            str :=timetostr(now)+': ����� �� ������ '+ips[i]+' '+' ---> '+inttostr(PingHost(ips[i]))+' ��';
            Memo1.Lines.Add(str);
            if CB_logA.Checked then log_err(str); //����� ��������� ������ ������ � ���
            Application.ProcessMessages;
             end
            else
            begin
            //StringGrid1.Cells[2,i] :='OFF';
            FShapes[i+1].Brush.Color :=clRed;
            SLs[i+1].Brush.Color :=clRed;
            SLs[i+1].Visible :=true;
            str :=timetostr(now)+': ����� '+ips[i]+' �� ��������!';
            Memo1.Lines.Add(str);
            if CB_logA.Checked then log_err(str); //����� ��������� ������ ������ � ���
            Application.ProcessMessages;
            end
          except
            ShowMessage('��������� ������ ��� ������� � '+ ips[i]);
          end;
        end;
  Image6.Cursor := crDefault;
  Application.ProcessMessages;
  if i_c then  StatusBar1.Panels[1].Text := '���������: ������� �������� ����������� ������������ � ����������: '+ MaskEdit1.Text+' ��� '+MaskEdit2.Text+' c'
  else  StatusBar1.Panels[1].Text := '���������: �����������';
end;
end;

{procedure TForm1.StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
 s:TGridRect;
begin
   if StringGrid1.Cells[ACol,ARow]<>'' then
    begin
     if StringGrid1.Cells[ACol,ARow]='OFF' then
      begin
       StringGrid1.Canvas.Brush.Color:=clRed;
       StringGrid1.Canvas.FillRect(Rect);
       StringGrid1.Canvas.TextOut(Rect.Left,Rect.Top,StringGrid1.Cells[Acol,Arow]);
      end;
     end;
     
   if StringGrid1.Cells[ACol,ARow]<>'' then
    begin
     if StringGrid1.Cells[ACol,ARow]='ON' then
      begin
       StringGrid1.Canvas.Brush.Color:=clLime;
       StringGrid1.Canvas.FillRect(Rect);
       StringGrid1.Canvas.TextOut(Rect.Left,Rect.Top,StringGrid1.Cells[Acol,Arow]);
      end;
     end;
 if StringGrid1.Cells[ACol,ARow]<>'' then
    begin
     if StringGrid1.Cells[ACol,ARow]='On' then
      begin
       StringGrid1.Canvas.Brush.Color:=clYellow;
       StringGrid1.Canvas.FillRect(Rect);
       StringGrid1.Canvas.TextOut(Rect.Left,Rect.Top,StringGrid1.Cells[Acol,Arow]);
      end;
     end;
 stringgrid1.Selection:=s;
end;   }

procedure TForm1.BBDoubleCheckClick(Sender: TObject);
begin

i_c := true;
 BBDoubleCheck.Cursor := crHourGlass;
 StatusMsg(3); //'���������: ����� ���������. ��������.';
// StringGrid1.Visible :=true;
If  (strtoint(MaskEdit1.Text) = 0) and  (strtoint(MaskEdit2.Text) < 30)
   then
   begin
    ShowMessage('�������� �� ������ ���� ������ 30 ������. ������ �������� �� ����!');
     MaskEdit2.Text :='30';
   end
   else
    begin
      Form1.BBAsdkucheck.Click;
      Form1.BBOneCheck.Click ;
      PingTimer.Interval :=strtoint(MaskEdit1.Text)*60000+strtoint(MaskEdit2.Text)*1000;
      AsdkuTimer.Interval :=strtoint(MaskEdit1.Text)*60000+strtoint(MaskEdit2.Text)*1000-10000;
      AsdkuTimer.Enabled :=true;
      PingTimer.Enabled :=true;
      RepaintTimer.Enabled :=true;
    end;
 StatusMsg(1); //���������: ������� �������� ����������� ������������ ����� � ����� � ���������� 10 ���
 BBDoubleCheck.Cursor := crHandPoint;
end;

// **** ��������� �������� ��������� **** //
procedure TForm1.MScreenSClick(Sender: TObject);
var
Bm : TBitmap;
//WinRect : TRect;
hWinDC : THandle;
SData :TDateTime;
myYear, myMonth, myDay : Word;
myHour, myMin, mySec, myMilli : Word;
dir: string;

begin
//�������� ����� � �������� ���������
dir :=ExtractFilePath(ParamStr(0))+'\Screen';
if not DirectoryExists(dir) then
ForceDirectories(dir);

Bm := TBitmap.Create;
Bm.Width := Self.Width;
Bm.Height := Self.Height;
hWinDC := GetWindowDC(Self.Handle);
BitBlt(Bm.Canvas.Handle,0,0,Bm.Width,Bm.Height,hWinDC,0,0,SRCCOPY);
ReleaseDC(Self.Handle, hWinDC);

SData :=now;
DecodeDateTime(SData,myYear,myMonth,myDay,myHour,MyMin,MySec,myMilli);

Bm.SaveToFile(dir+'\Screen_'+DateToStr(SData)+IntToStr(myHour)+IntToStr(myMin)+IntToStr(mySec)+'.jpg');
Bm.Free;
Memo1.Lines.Add('������ �������� ---> Screen_'+DateToStr(SData)+IntToStr(myHour)+IntToStr(myMin)+IntToStr(mySec)+'.jpg');
end;

procedure TForm1.log_err(error: string);  //��������� ������ ������ � ��� ����
var
  f:TextFile;
  FileDir:String;
begin
 FileDir:=ExtractFilePath(ParamStr(0))+'\log_error_monitoring.txt';
 AssignFile(f,FileDir);
    try
     if not FileExists(FileDir) then //���� ���� �� ���������� �� �������� �����
     begin
      Rewrite(f);//��������������� �����
      Memo1.Lines.add('������ ���� ��� ���� ������: '+FileDir);
     end;
     Append(f);//���������� ������ � ������������ ����
     Writeln(f,datetostr(now)+': '+error);
     Flush(f);
     CloseFile(f);

    except
        ShowMessage('��������!'+#13#10+'��������� ������ ��� �������� ���������� �����! ��������� ��������� ������� � ����� ������� ���������');
    end;

end;

// **** ��������� ��������� ����� ���������-���32 **** //
procedure TForm1.DrawLineG32(color: Tcolor);
begin
 with Form1.Canvas do
    begin
      Pen.Width:=5; //��������� ������� ����
      Pen.Color:=color; //��������� ����� ����
      PolyLine([Point(SK2.Left+10,SK2.Top+3), Point(Shape9.Left,Shape9.Top),Point(Shape10.Left,Shape10.Top),
      Point(Shape11.Left,Shape11.Top),Point(Shape12.Left,Shape12.Top),
      Point(Shape13.Left,Shape13.Top),Point(Shape14.Left,Shape14.Top),
      Point(Shape15.Left,Shape15.Top),Point(Shape16.Left,Shape16.Top),
      Point(Shape23.Left,Shape23.Top), Point(SG320.Left,SG320.Top+10)]);  //������ ����� ������� ����� �� ������� ������
     end;
end;

// **** ��������� ��������� ����� ���32-���33 **** //
procedure TForm1.DrawLineG33(color: Tcolor);
begin
 with Form1.Canvas do
    begin
      Pen.Width:=5; //��������� ������� ����
      Pen.Color:=color; //��������� ����� ����
      PolyLine([Point(SG322.Left+5,SG322.Top+10), Point(Shape20.Left,Shape20.Top),
      Point(Shape21.Left,Shape21.Top), Point(Shape22.Left,Shape22.Top),
      Point(Shape17.Left,Shape17.Top), Point(Shape18.Left,Shape18.Top),
      Point(Shape19.Left,Shape19.Top), Point(SG332.Left+15,SG332.Top+5)]);   //������ ����� ������� ����� �� ������� ������
    end;
end;

// **** ��������� ��������� ����� ���������-��� **** //
procedure TForm1.DrawLineZ(color: Tcolor);
begin
 with Form1.Canvas do
    begin
      Pen.Width:=5; //��������� ������� ����
      Pen.Color:=color; //��������� ����� ����
      PolyLine([Point(SZGU1.Left+12,SZGU1.Top+10), Point(Shape1.Left,Shape1.Top),Point(Shape2.Left,Shape2.Top),
      Point(Shape3.Left+2,Shape3.Top),Point(Shape4.Left,Shape4.Top),
      Point(Shape5.Left,Shape5.Top),Point(Shape6.Left,Shape6.Top),
      Point(Shape7.Left,Shape7.Top),Point(Shape8.Left,Shape8.Top),
      Point(SK1.Left+5,SK1.Top)]);     //������ ����� ������� ����� �� ������� ������
     end;
end;

// **** ��������� ����������� ��������� ��������� � ���������� **** //
procedure TForm1.StatusMsg(msg: integer);
var
str:string;
begin
case msg of
  0: str := '���������: �����������';
  1: str := '���������: ������� �������� ����������� ������������ ����� � ����� � ���������� 10 ��� ';
  2: str := '���������: ������� �������� ����������� ������������ � ����������: '+ MaskEdit1.Text+' ��� '+MaskEdit2.Text+' c';
  3: str := '���������: ����� ���������. ��������...';
else
  str := '';
end;
StatusBar1.Panels[1].Text := str;

end;


procedure TForm1.MvisASDKUClick(Sender: TObject);
var
i:integer;
begin
MvisASDKU.Checked :=not MvisASDKU.Checked;
if MvisASDKU.Checked = true then
begin
  for i:=1 to 9 do
    begin
      FShapes[i].Visible :=true;
      SLs[i].Visible :=true;
      IA1.Visible :=true;
      IA2.Visible :=true;
      IA3.Visible :=true;
      IA4.Visible :=true;
      IA5.Visible :=true;
      IA6.Visible :=true;
      IA7.Visible :=true;
      IA8.Visible :=true;
      IA9.Visible :=true;
      LA1.Visible :=true;
      LA2.Visible :=true;
      LA3.Visible :=true;
      LA4.Visible :=true;
      LA5.Visible :=true;
      LA6.Visible :=true;
      LA7.Visible :=true;
      LA8.Visible :=true;
      LA9.Visible :=true;
      LNS23.Visible :=true;
      Bevel5.Visible :=true;
    end;
end
else
begin
  for i:=1 to 9 do
    begin
      FShapes[i].Visible :=false;
      SLs[i].Visible :=false;
      IA1.Visible :=false;
      IA2.Visible :=false;
      IA3.Visible :=false;
      IA4.Visible :=false;
      IA5.Visible :=false;
      IA6.Visible :=false;
      IA7.Visible :=false;
      IA8.Visible :=false;
      IA9.Visible :=false;
      LA1.Visible :=false;
      LA2.Visible :=false;
      LA3.Visible :=false;
      LA4.Visible :=false;
      LA5.Visible :=false;
      LA6.Visible :=false;
      LA7.Visible :=false;
      LA8.Visible :=false;
      LA9.Visible :=false;
      LNS23.Visible :=false;
      Bevel5.Visible :=false;
    end;
end;
end;
procedure TForm1.MintcheckClick(Sender: TObject);
begin
Mintcheck.Checked := not Mintcheck.Checked;
if Mintcheck.Checked = false then
GroupBox3.Visible :=false
else
GroupBox3.Visible :=true;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  i_c := false;
  PingTimer.Enabled :=False;
  RepaintTimer.Enabled :=false;
  StatusMsg(0); //'���������: �����������';
  CB_logA.Checked :=false;
  CB_logS.Checked :=false;
end;



procedure TForm1.N4Click(Sender: TObject);
begin
winhelp(Form1.Handle, 'help.hlp', HELP_CONTEXT,1);
end;


procedure TForm1.N5Click(Sender: TObject);
begin
F_SNMP.show;
end;

procedure TForm1.N6Click(Sender: TObject);
begin
Form4.show;
end;

procedure TForm1.N7Click(Sender: TObject);
begin
try
Memo1.Lines.SaveToFile('curent_log.txt');
ShellExecute(Handle, 'open', 'c:\windows\notepad.exe', PWideChar(ExtractFilePath(Application.ExeName)+ '\curent_log.txt') ,nil,SW_SHOWNORMAL);
    except
        ShowMessage('��������!'+#13#10+'��������� ������ ��� �������� ���������� �����! ��������� ��������� ������� � ����� ������� ���������');
        ShowMessage('��� ����� �� ����������. ��� �� ��� ������'+#13+'��������, �� ���� ������ �����, ��� �� ���� ���������� ������� ������ � ���!');
    end;

end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
MyPing.Destroy;
end;



end.
