unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, WinTypes, WinProcs, jpeg, ExtCtrls;



type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button26: TButton;
    Button27: TButton;
    Button28: TButton;
    Button29: TButton;
    Button30: TButton;
    Button31: TButton;
    Button32: TButton;
    Button33: TButton;
    Button34: TButton;
    Button35: TButton;
    Button36: TButton;
    Button37: TButton;
    Button38: TButton;
    Button39: TButton;
    Button40: TButton;
    Button41: TButton;
    Button42: TButton;
    Button43: TButton;
    Button44: TButton;
    Button45: TButton;
    Button46: TButton;
    Button47: TButton;
    Button48: TButton;
    Button49: TButton;
    Button50: TButton;
    Button51: TButton;
    Button53: TButton;
    Button54: TButton;
    Button55: TButton;
    Button56: TButton;
    Button57: TButton;
    Button58: TButton;
    Button59: TButton;
    Button60: TButton;
    Button61: TButton;
    Button64: TButton;
    Button65: TButton;
    Button66: TButton;
    Button67: TButton;
    Button68: TButton;
    Button70: TButton;
    Button71: TButton;
    Button72: TButton;
    Button73: TButton;
    Button74: TButton;
    Button75: TButton;
    Button76: TButton;
    Button78: TButton;
    Button20: TButton;
    Button18: TButton;
    Image1: TImage;
    Button17: TButton;
    Button19: TButton;
    Button21: TButton;
    Button22: TButton;
    Button23: TButton;
    Button24: TButton;
    Button25: TButton;
    Button52: TButton;
    Button62: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button28Click(Sender: TObject);
    procedure Button29Click(Sender: TObject);
    procedure Button30Click(Sender: TObject);
    procedure Button31Click(Sender: TObject);
    procedure Button32Click(Sender: TObject);
    procedure Button33Click(Sender: TObject);
    procedure Button34Click(Sender: TObject);
    procedure Button35Click(Sender: TObject);
    procedure Button36Click(Sender: TObject);
    procedure Button37Click(Sender: TObject);
    procedure Button38Click(Sender: TObject);
    procedure Button39Click(Sender: TObject);
    procedure Button40Click(Sender: TObject);
    procedure Button42Click(Sender: TObject);
    procedure Button43Click(Sender: TObject);
    procedure Button44Click(Sender: TObject);
    procedure Button45Click(Sender: TObject);
    procedure Button46Click(Sender: TObject);
    procedure Button47Click(Sender: TObject);
    procedure Button48Click(Sender: TObject);
    procedure Button49Click(Sender: TObject);
    procedure Button50Click(Sender: TObject);
    procedure Button51Click(Sender: TObject);
    procedure Button53Click(Sender: TObject);
    procedure Button54Click(Sender: TObject);
    procedure Button55Click(Sender: TObject);
    procedure Button56Click(Sender: TObject);
    procedure Button57Click(Sender: TObject);
    procedure Button58Click(Sender: TObject);
    procedure Button59Click(Sender: TObject);
    procedure Button60Click(Sender: TObject);
    procedure Button61Click(Sender: TObject);
    procedure Button75Click(Sender: TObject);
    procedure Button74Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button78Click(Sender: TObject);
    procedure Button72Click(Sender: TObject);
    procedure Button26Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button66Click(Sender: TObject);
    procedure Button64Click(Sender: TObject);
    procedure Button65Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button71Click(Sender: TObject);
    procedure Button67Click(Sender: TObject);
    procedure Button70Click(Sender: TObject);
    procedure Button27Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button41Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button24Click(Sender: TObject);
    procedure Button25Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure Button52Click(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure Button62Click(Sender: TObject);
    procedure Button76Click(Sender: TObject);
    procedure Button73Click(Sender: TObject);



  private
   procedure littleletter_ru;
   procedure littleletter_en;
  public
    { Public declarations }

  end;

var
  Form1: TForm1;
  shiftbtn : Boolean;
  lngbutton : Boolean;
  capsbtn : Boolean;
  k : Boolean;


implementation

{$R *.dfm}
procedure shiftoff;
begin
  if lngbutton= False then
    begin
      keybd_event(VK_SHIFT, 0, KEYEVENTF_KEYUP, 0);
      Form1.littleletter_ru;
      shiftbtn:=False;
    end
  else begin
      keybd_event(VK_SHIFT, 0, KEYEVENTF_KEYUP, 0);
      Form1.littleletter_en;
      shiftbtn:=False;
      end
end;

procedure tform1.littleletter_ru;
begin
  Form1.Button28.caption := 'й';
  Form1.Button29.caption := 'ц';
  Form1.Button30.caption := 'у';
  Form1.Button31.caption := 'к';
  Form1.Button32.caption := 'е';
  Form1.Button33.caption := 'н';
  Form1.Button34.caption := 'г';
  Form1.Button35.caption := 'ш';
  Form1.Button36.caption := 'щ';
  Form1.Button37.caption := 'з';
  Form1.Button38.caption := 'х';
  Form1.Button39.caption := 'ъ';
  Form1.Button42.caption := 'ф';
  Form1.Button78.caption := 'ы';
  Form1.Button43.caption := 'в';
  Form1.Button44.caption := 'а';
  Form1.Button45.caption := 'п';
  Form1.Button46.caption := 'р';
  Form1.Button47.caption := 'о';
  Form1.Button48.caption := 'л';
  Form1.Button49.caption := 'д';
  Form1.Button50.caption := 'ж';
  Form1.Button51.caption := 'э';
  Form1.Button17.caption := 'я';
  Form1.Button53.caption := 'ч';
  Form1.Button54.caption := 'с';
  Form1.Button55.caption := 'м';
  Form1.Button56.caption := 'и';
  Form1.Button57.caption := 'т';
  Form1.Button58.caption := 'ь';
  Form1.Button59.caption := 'б';
  Form1.Button60.caption := 'ю';
  Form1.Button2.caption := 'ё';
  Form1.Button13.caption := '-';
  Form1.Button14.caption := '=';
  Form1.Button40.caption := '\';
  Form1.Button3.caption := '1';
  Form1.Button4.caption := '2';
  Form1.Button5.caption := '3';
  Form1.Button6.caption := '4';
  Form1.Button7.caption := '5';
  Form1.Button8.caption := '6';
  Form1.Button9.caption := '7';
  Form1.Button10.caption := '8';
  Form1.Button11.caption := '9';
  Form1.Button12.caption := '0';
  Form1.Button61.caption := '.';
end;

procedure tform1.littleletter_en;
begin
 Form1.Button28.caption := 'q';
 Form1.Button29.caption := 'w';
 Form1.Button30.caption := 'e';
 Form1.Button31.caption := 'r';
 Form1.Button32.caption := 't';
 Form1.Button33.caption := 'y';
 Form1.Button34.caption := 'u';
 Form1.Button35.caption := 'i';
 Form1.Button36.caption := 'o';
 Form1.Button37.caption := 'p';
 Form1.Button38.caption := '[';
 Form1.Button39.caption := ']';
 Form1.Button42.caption := 'a';
 Form1.Button78.caption := 's';
 Form1.Button43.caption := 'd';
 Form1.Button44.caption := 'f';
 Form1.Button45.caption := 'g';
 Form1.Button46.caption := 'h';
 Form1.Button47.caption := 'j';
 Form1.Button48.caption := 'k';
 Form1.Button49.caption := 'l';
 Form1.Button50.caption := ';';
 Form1.Button51.caption := '"';
 Form1.Button17.caption := 'z';
 Form1.Button53.caption := 'x';
 Form1.Button54.caption := 'c';
 Form1.Button55.caption := 'v';
 Form1.Button56.caption := 'b';
 Form1.Button57.caption := 'n';
 Form1.Button58.caption := 'm';
 Form1.Button59.caption := ',';
 Form1.Button60.caption := '.';
 Form1.Button2.caption := '`';
 Form1.Button61.caption := '\';
 Form1.Button13.caption := '-';
 Form1.Button14.caption := '=';
 Form1.Button40.caption := '\';
 Form1.Button3.caption := '1';
 Form1.Button4.caption := '2';
 Form1.Button5.caption := '3';
 Form1.Button6.caption := '4';
 Form1.Button7.caption := '5';
 Form1.Button8.caption := '6';
 Form1.Button9.caption := '7';
 Form1.Button10.caption := '8';
 Form1.Button11.caption := '9';
 Form1.Button12.caption := '0';
end;

procedure bigletter_RU;
begin
   Form1.Button28.caption := 'Й';
   Form1.Button29.caption := 'Ц';
   Form1.Button30.caption := 'У';
   Form1.Button31.caption := 'К';
   Form1.Button32.caption := 'Е';
   Form1.Button33.caption := 'Н';
   Form1.Button34.caption := 'Г';
   Form1.Button35.caption := 'Ш';
   Form1.Button36.caption := 'Щ';
   Form1.Button37.caption := 'З';
   Form1.Button38.caption := 'Х';
   Form1.Button39.caption := 'Ъ';
   Form1.Button42.caption := 'Ф';
   Form1.Button78.caption := 'Ы';
   Form1.Button43.caption := 'В';
   Form1.Button44.caption := 'А';
   Form1.Button45.caption := 'П';
   Form1.Button46.caption := 'Р';
   Form1.Button47.caption := 'О';
   Form1.Button48.caption := 'Л';
   Form1.Button49.caption := 'Д';
   Form1.Button50.caption := 'Ж';
   Form1.Button51.caption := 'Э';
   Form1.Button17.caption := 'Я';
   Form1.Button53.caption := 'Ч';
   Form1.Button54.caption := 'С';
   Form1.Button55.caption := 'М';
   Form1.Button56.caption := 'И';
   Form1.Button57.caption := 'Т';
   Form1.Button58.caption := 'Ь';
   Form1.Button59.caption := 'Б';
   Form1.Button60.caption := 'Ю';
   Form1.Button2.caption := 'Ё';
   Form1.Button3.caption := '!';
   Form1.Button4.caption := '"';
   Form1.Button5.caption := '?';
   Form1.Button6.caption := ';';
   Form1.Button7.caption := '%';
   Form1.Button8.caption := ':';
   Form1.Button9.caption := '?';
   Form1.Button10.caption := '*';
   Form1.Button11.caption := '(';
   Form1.Button12.caption := ')';
   Form1.Button13.caption := '_';
   Form1.Button14.caption := '+';
   Form1.Button61.caption := ',';
   Form1.Button40.caption := '/';
end;

procedure bigletter_en;
begin
    Form1.Button28.caption := 'Q';
    Form1.Button29.caption := 'W';
    Form1.Button30.caption := 'E';
    Form1.Button31.caption := 'R';
    Form1.Button32.caption := 'T';
    Form1.Button33.caption := 'Y';
    Form1.Button34.caption := 'U';
    Form1.Button35.caption := 'I';
    Form1.Button36.caption := 'O';
    Form1.Button37.caption := 'P';
    Form1.Button38.caption := '{';
    Form1.Button39.caption := '}';
    Form1.Button42.caption := 'A';
    Form1.Button78.caption := 'S';
    Form1.Button43.caption := 'D';
    Form1.Button44.caption := 'F';
    Form1.Button45.caption := 'G';
    Form1.Button46.caption := 'H';
    Form1.Button47.caption := 'J';
    Form1.Button48.caption := 'K';
    Form1.Button49.caption := 'L';
    Form1.Button50.caption := ':';
    Form1.Button51.caption := '"';
    Form1.Button17.caption := 'Z';
    Form1.Button53.caption := 'X';
    Form1.Button54.caption := 'C';
    Form1.Button55.caption := 'V';
    Form1.Button56.caption := 'B';
    Form1.Button57.caption := 'N';
    Form1.Button58.caption := 'M';
    Form1.Button3.caption := '!';
    Form1.Button4.caption := '"';
    Form1.Button5.caption := '?';
    Form1.Button6.caption := ';';
    Form1.Button7.caption := '%';
    Form1.Button8.caption := ':';
    Form1.Button9.caption := '?';
    Form1.Button10.caption := '*';
    Form1.Button11.caption := '(';
    Form1.Button12.caption := ')';
    Form1.Button13.caption := '_';
    Form1.Button14.caption := '+';
    Form1.Button61.caption := ',';
    Form1.Button40.caption := '/';
    Form1.Button2.caption := '~';
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  littleletter_ru;
  SetWindowLong(Handle, GWL_EXSTYLE,
GetWindowLong(Handle, GWL_EXSTYLE) or WS_EX_TOPMOST or WS_EX_NOACTIVATE
);
end;


 procedure TForm1.Button2Click(Sender: TObject);
begin
  keybd_event(192, 0, 0, 0);
  keybd_event(192, 0, KEYEVENTF_KEYUP, 0);
  keybd_event(VK_SHIFT, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TForm1.Button3Click(Sender: TObject);

begin
  keybd_event(Byte('1'), 0, 0, 0);
  keybd_event(Byte('1'), 0, KEYEVENTF_KEYUP, 0);
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  keybd_event(Byte('2'), 0, 0, 0);
  keybd_event(Byte('2'), 0, KEYEVENTF_KEYUP, 0);
  shiftoff
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  keybd_event(Byte('3'), 0, 0, 0);
  keybd_event(Byte('3'), 0, KEYEVENTF_KEYUP, 0);
  shiftoff
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  keybd_event(Byte('4'), 0, 0, 0);
  keybd_event(Byte('4'), 0, KEYEVENTF_KEYUP, 0);
  shiftoff
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  keybd_event(Byte('5'), 0, 0, 0);
  keybd_event(Byte('5'), 0, KEYEVENTF_KEYUP, 0);
  shiftoff
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  keybd_event(Byte('6'), 0, 0, 0);
  keybd_event(Byte('6'), 0, KEYEVENTF_KEYUP, 0);
  shiftoff
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
  keybd_event(Byte('7'), 0, 0, 0);
  keybd_event(Byte('7'), 0, KEYEVENTF_KEYUP, 0);
  shiftoff
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
  keybd_event(Byte('8'), 0, 0, 0);
  keybd_event(Byte('8'), 0, KEYEVENTF_KEYUP, 0);
  shiftoff
end;
procedure TForm1.Button11Click(Sender: TObject);
begin
  keybd_event(Byte('9'), 0, 0, 0);
  keybd_event(Byte('9'), 0, KEYEVENTF_KEYUP, 0);
  shiftoff
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
  keybd_event(Byte('0'), 0, 0, 0);
  keybd_event(Byte('0'), 0, KEYEVENTF_KEYUP, 0);
  shiftoff
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
  keybd_event(189, 0, 0, 0);
  keybd_event(189, 0, KEYEVENTF_KEYUP, 0);
  shiftoff
end;

procedure TForm1.Button14Click(Sender: TObject);
begin
  keybd_event(187, 0, 0, 0);
  keybd_event(187, 0, KEYEVENTF_KEYUP, 0);
  shiftoff
end;

procedure TForm1.Button28Click(Sender: TObject);
begin
  keybd_event(Byte('Q'), 0, 0, 0);
  keybd_event(Byte('Q'), 0, KEYEVENTF_KEYUP, 0);
  shiftoff
end;

procedure TForm1.Button29Click(Sender: TObject);
begin
  keybd_event(Byte('W'), 0, 0, 0);
  keybd_event(Byte('W'), 0, KEYEVENTF_KEYUP, 0);
  shiftoff
end;


procedure TForm1.Button30Click(Sender: TObject);
begin
  keybd_event(Byte('E'), 0, 0, 0);
  keybd_event(Byte('E'), 0, KEYEVENTF_KEYUP, 0);
  shiftoff
end;

procedure TForm1.Button31Click(Sender: TObject);
begin
  keybd_event(Byte('R'), 0, 0, 0);
  keybd_event(Byte('R'), 0, KEYEVENTF_KEYUP, 0);
  shiftoff
end;

procedure TForm1.Button32Click(Sender: TObject);
begin
  keybd_event(Byte('T'), 0, 0, 0);
  keybd_event(Byte('T'), 0, KEYEVENTF_KEYUP, 0);
  shiftoff
end;

procedure TForm1.Button33Click(Sender: TObject);
begin
  keybd_event(Byte('Y'), 0, 0, 0);
  keybd_event(Byte('Y'), 0, KEYEVENTF_KEYUP, 0);
  shiftoff
end;

procedure TForm1.Button34Click(Sender: TObject);
begin
  keybd_event(Byte('U'), 0, 0, 0);
  keybd_event(Byte('U'), 0, KEYEVENTF_KEYUP, 0);
  shiftoff
end;

procedure TForm1.Button35Click(Sender: TObject);
begin
  keybd_event(Byte('I'), 0, 0, 0);
  keybd_event(Byte('I'), 0, KEYEVENTF_KEYUP, 0);
  shiftoff
end;

procedure TForm1.Button36Click(Sender: TObject);
begin
  keybd_event(Byte('O'), 0, 0, 0);
  keybd_event(Byte('O'), 0, KEYEVENTF_KEYUP, 0);
  shiftoff
end;

procedure TForm1.Button37Click(Sender: TObject);
begin
  keybd_event(Byte('P'), 0, 0, 0);
  keybd_event(Byte('P'), 0, KEYEVENTF_KEYUP, 0);
  shiftoff
end;

procedure TForm1.Button38Click(Sender: TObject);
begin
  keybd_event(219, 0, 0, 0);
  keybd_event(219, 0, KEYEVENTF_KEYUP, 0);
  shiftoff
end;

procedure TForm1.Button39Click(Sender: TObject);
begin
  keybd_event(221, 0, 0, 0);
  keybd_event(221, 0, KEYEVENTF_KEYUP, 0);
  shiftoff
end;

procedure TForm1.Button40Click(Sender: TObject);
begin
  keybd_event(220, 0, 0, 0);
  keybd_event(220, 0, KEYEVENTF_KEYUP, 0);
  shiftoff
end;

procedure TForm1.Button42Click(Sender: TObject);
begin
  keybd_event(Byte('A'), 0, 0, 0);
  keybd_event(Byte('A'), 0, KEYEVENTF_KEYUP, 0);
  shiftoff;
end;

procedure TForm1.Button78Click(Sender: TObject);
begin
  keybd_event(Byte('S'), 0, 0, 0);
  keybd_event(Byte('S'), 0, KEYEVENTF_KEYUP, 0);
  shiftoff
end;

procedure TForm1.Button43Click(Sender: TObject);
begin
  keybd_event(Byte('D'), 0, 0, 0);
  keybd_event(Byte('D'), 0, KEYEVENTF_KEYUP, 0);
  shiftoff
end;

procedure TForm1.Button44Click(Sender: TObject);
begin
  keybd_event(Byte('F'), 0, 0, 0);
  keybd_event(Byte('F'), 0, KEYEVENTF_KEYUP, 0);
  shiftoff
end;


procedure TForm1.Button45Click(Sender: TObject);
begin
  keybd_event(Byte('G'), 0, 0, 0);
  keybd_event(Byte('G'), 0, KEYEVENTF_KEYUP, 0);
  shiftoff
end;

procedure TForm1.Button46Click(Sender: TObject);
begin
  keybd_event(Byte('H'), 0, 0, 0);
  keybd_event(Byte('H'), 0, KEYEVENTF_KEYUP, 0);
  shiftoff
end;

procedure TForm1.Button47Click(Sender: TObject);
begin
  keybd_event(Byte('J'), 0, 0, 0);
  keybd_event(Byte('J'), 0, KEYEVENTF_KEYUP, 0);
  shiftoff
end;

procedure TForm1.Button48Click(Sender: TObject);
begin
  keybd_event(Byte('K'), 0, 0, 0);
  keybd_event(Byte('K'), 0, KEYEVENTF_KEYUP, 0);
  shiftoff
end;

procedure TForm1.Button49Click(Sender: TObject);
begin
  keybd_event(Byte('L'), 0, 0, 0);
  keybd_event(Byte('L'), 0, KEYEVENTF_KEYUP, 0);
  shiftoff
end;

procedure TForm1.Button50Click(Sender: TObject);
begin
  keybd_event(186, 0, 0, 0);
  keybd_event(186, 0, KEYEVENTF_KEYUP, 0);
  shiftoff
end;

procedure TForm1.Button51Click(Sender: TObject);
begin
  keybd_event(222, 0, 0, 0);
  keybd_event(222, 0, KEYEVENTF_KEYUP, 0);
  shiftoff
end;

procedure TForm1.Button17Click(Sender: TObject);
begin
  keybd_event(Byte('Z'), 0, 0, 0);
  keybd_event(Byte('Z'), 0, KEYEVENTF_KEYUP, 0);
  shiftoff
end;

procedure TForm1.Button53Click(Sender: TObject);
begin
  keybd_event(Byte('X'), 0, 0, 0);
  keybd_event(Byte('X'), 0, KEYEVENTF_KEYUP, 0);
  shiftoff
end;

procedure TForm1.Button54Click(Sender: TObject);
begin
  keybd_event(Byte('C'), 0, 0, 0);
  keybd_event(Byte('C'), 0, KEYEVENTF_KEYUP, 0);
  shiftoff
end;

procedure TForm1.Button55Click(Sender: TObject);
begin
  keybd_event(Byte('V'), 0, 0, 0);
  keybd_event(Byte('V'), 0, KEYEVENTF_KEYUP, 0);
  shiftoff
end;

procedure TForm1.Button56Click(Sender: TObject);
begin
  keybd_event(Byte('B'), 0, 0, 0);
  keybd_event(Byte('B'), 0, KEYEVENTF_KEYUP, 0);
  shiftoff
end;

procedure TForm1.Button57Click(Sender: TObject);
begin
  keybd_event(Byte('N'), 0, 0, 0);
  keybd_event(Byte('N'), 0, KEYEVENTF_KEYUP, 0);
  shiftoff
end;

procedure TForm1.Button58Click(Sender: TObject);
begin
  keybd_event(Byte('M'), 0, 0, 0);
  keybd_event(Byte('M'), 0, KEYEVENTF_KEYUP, 0);
  shiftoff
end;

procedure TForm1.Button59Click(Sender: TObject);
begin
  keybd_event(188, 0, 0, 0);
  keybd_event(188, 0, KEYEVENTF_KEYUP, 0);
  shiftoff
end;

procedure TForm1.Button60Click(Sender: TObject);
begin
  keybd_event(190, 0, 0, 0);
  keybd_event(190, 0, KEYEVENTF_KEYUP, 0);
  shiftoff
end;

procedure TForm1.Button61Click(Sender: TObject);
begin
  keybd_event(191, 0, 0, 0);
  keybd_event(191, 0, KEYEVENTF_KEYUP, 0);
  shiftoff
end;

procedure TForm1.Button75Click(Sender: TObject);
begin
  keybd_event(VK_RETURN, 0, 0, 0);
  keybd_event(VK_RETURN, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TForm1.Button74Click(Sender: TObject);
begin
  keybd_event(VK_SPACE, 0, 0, 0);
  keybd_event(VK_SPACE, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TForm1.Button15Click(Sender: TObject);
begin
  keybd_event(VK_BACK, 0, 0, 0);
  keybd_event(VK_BACK, 0, KEYEVENTF_KEYUP, 0);
end;

procedure TForm1.Button72Click(Sender: TObject); ////капс
begin
 if lngbutton = True
  then
    if capsbtn = False then
      begin
        keybd_event(VK_CAPITAL,0,0,0);
        keybd_event(VK_CAPITAL,0,KEYEVENTF_KEYUP,0);
        bigletter_en;
        capsbtn := True;
      end
    else begin
          keybd_event(VK_CAPITAL,0,0,0);
          keybd_event(VK_CAPITAL,0,KEYEVENTF_KEYUP,0);
          littleletter_en;
          capsbtn:=False;
         end
  else if capsbtn = false then
      begin
        keybd_event(VK_CAPITAL,0,0,0);
        keybd_event(VK_CAPITAL,0,KEYEVENTF_KEYUP,0);
        bigletter_RU;
        capsbtn := true;
      end
    else begin
          keybd_event(VK_CAPITAL,0,0,0);
          keybd_event(VK_CAPITAL,0,KEYEVENTF_KEYUP,0);
          littleletter_ru;
          capsbtn:=false;
         end

end;

procedure TForm1.Button76Click(Sender: TObject);
begin
 if k = False then begin
keybd_event(VK_SHIFT, 0, 0, 0);
k:=True;
end
else begin
shiftoff;
k:=False;
end;
end;


procedure TForm1.Button26Click(Sender: TObject);
begin
 keybd_event(VK_CONTROL,0,0,0);
 keybd_event(VK_CONTROL,0,KEYEVENTF_KEYUP,0);
end;


procedure TForm1.Button16Click(Sender: TObject);    ////язык
 begin
  keybd_event(VK_LSHIFT, 0, 0, 0);
  keybd_event(VK_MENU, 0, 0, 0);
  keybd_event(VK_LSHIFT, 0, KEYEVENTF_KEYUP, 0);
  keybd_event(VK_MENU, 0, KEYEVENTF_KEYUP, 0);
  shiftoff;
   if lngbutton = true  then
    begin
      if capsbtn = False then begin
      littleletter_ru;
      Button16.caption := 'RU';
      lngbutton:= False;
      end
        else begin
      bigletter_RU;
      Button16.caption := 'RU';
      lngbutton:= False;
      end;
    end
   else
      begin if capsbtn = False then begin
        littleletter_en;
        Button16.caption := 'EN';
        lngbutton := true;
        end
        else begin
         bigletter_en;
        Button16.caption := 'EN';
        lngbutton := true;
        end;
      end;
end;

procedure TForm1.Button66Click(Sender: TObject);
begin
 keybd_event(37,0,0,0);
 keybd_event(37,0,KEYEVENTF_KEYUP,0);
end;


procedure TForm1.Button64Click(Sender: TObject);
begin
 keybd_event(39,0,0,0);
 keybd_event(39,0,KEYEVENTF_KEYUP,0);
end;

procedure TForm1.Button65Click(Sender: TObject);
begin
 keybd_event(40,0,0,0);
 keybd_event(40,0,KEYEVENTF_KEYUP,0);
end;

procedure TForm1.Button20Click(Sender: TObject);
begin
 keybd_event(38,0,0,0);
 keybd_event(38,0,KEYEVENTF_KEYUP,0);
end;

procedure TForm1.Button71Click(Sender: TObject);
begin
 keybd_event(VK_TAB,0,0,0);
 keybd_event(VK_TAB,0,KEYEVENTF_KEYUP,0);
end;

procedure TForm1.Button67Click(Sender: TObject);
begin
 keybd_event(VK_MENU,0,0,0);                          /////альт
 keybd_event(VK_MENU,0,KEYEVENTF_KEYUP,0);
end;

procedure TForm1.Button70Click(Sender: TObject);
begin
 keybd_event(VK_MENU,0,0,0);                          /////альт2
 keybd_event(VK_MENU,0,KEYEVENTF_KEYUP,0);
end;

procedure TForm1.Button27Click(Sender: TObject);      ////КОНТРЛ
begin
 keybd_event(VK_CONTROL,0,0,0);
 keybd_event(VK_CONTROL,0,KEYEVENTF_KEYUP,0);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
 keybd_event(VK_ESCAPE,0,0,0);
 keybd_event(VK_ESCAPE,0,KEYEVENTF_KEYUP,0);
end;

procedure TForm1.Button41Click(Sender: TObject);
begin
 keybd_event(VK_DELETE,0,0,0);
 keybd_event(VK_DELETE,0,KEYEVENTF_KEYUP,0);
end;


procedure TForm1.Button18Click(Sender: TObject);          ////правая кнопка мыши
begin
 keybd_event(93,0,0,0);
 keybd_event(93,0,KEYEVENTF_KEYUP,0);
end;

procedure TForm1.Button19Click(Sender: TObject);
begin
 keybd_event(VK_HOME,0,0,0);
 keybd_event(VK_HOME,0,KEYEVENTF_KEYUP,0);
end;



procedure TForm1.Button24Click(Sender: TObject);
begin
 keybd_event(33,0,0,0);
 keybd_event(33,0,KEYEVENTF_KEYUP,0);
end;

procedure TForm1.Button25Click(Sender: TObject);
begin
 keybd_event(34,0,0,0);
 keybd_event(34,0,KEYEVENTF_KEYUP,0);
end;


procedure TForm1.Button22Click(Sender: TObject);
begin
 keybd_event(45,0,0,0);
 keybd_event(45,0,KEYEVENTF_KEYUP,0);
end;

procedure TForm1.Button52Click(Sender: TObject);
begin
 keybd_event(19,0,0,0);
 keybd_event(19,0,KEYEVENTF_KEYUP,0);
end;

procedure TForm1.Button23Click(Sender: TObject);
begin
 keybd_event(VK_SNAPSHOT,0,0,0);
 keybd_event(VK_SNAPSHOT,0,KEYEVENTF_KEYUP,0);
end;

procedure TForm1.Button62Click(Sender: TObject);
begin
 keybd_event(VK_SCROLL,0,0,0);
 keybd_event(VK_SCROLL,0,KEYEVENTF_KEYUP,0);
end;


procedure TForm1.Button73Click(Sender: TObject);
begin
 if lngbutton = True
  then
    if shiftbtn = False then
      begin
        keybd_event(vk_shift,0,0,0);
        bigletter_en;
        shiftbtn := True;
      end
    else begin
          keybd_event(vk_shift,0,0,0);
          keybd_event(VK_SHIFT, 0, KEYEVENTF_KEYUP, 0);
          littleletter_en;
          shiftbtn:=False;
         end
  else if shiftbtn = false then
      begin
        keybd_event(vk_shift,0,0,0);
        bigletter_RU;
        shiftbtn := true;
      end
    else begin
          keybd_event(VK_CAPITAL,0,0,0);
          keybd_event(VK_SHIFT, 0, KEYEVENTF_KEYUP, 0);
          littleletter_ru;
          shiftbtn:=false;
         end

end;

end.
