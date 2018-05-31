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
    Memo1: TMemo;
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
  KS :TKeyboardState;

implementation

{$R *.dfm}

Function FormKey.GetUnicodeSymbol(k:word):widechar;
                          procedure VK_ALL_CLEAR;
                         // var f:integer;
                          begin
                         // KS[VK_CAPITAL]:=0;
                            KS[VK_SHIFT]:=0;
                            KS[VK_CONTROL]:=0;
                            KS[VK_MENU]:=0;
                          end;
var VK, SC, C: cardinal;
    Ch: Char;
    modeKey:(symbol, nosymbol);
 
 
begin
SC := MapVirtualKey(k, MAPVK_VK_TO_VSC);

  if ((SC>=2)and(SC<=13))  OR
   ((SC>=16)and(SC<=27)) OR
   ((SC>=30)and(SC<=41)) OR
   ((SC>=44)and(SC<=53)) OR (SC=57)
  then modeKey:=symbol
  else modeKey:=nosymbol;

case modeKey of

   nosymbol: begin
                        case SC of
                         {Caps}  58:begin
                                      KS[VK_CAPITAL] := KS[VK_CAPITAL] xor $1;
                                      Caps_Pressed:= not(Caps_Pressed);
                                    end;
 
                         {Shift} 42:begin
                                      KS[VK_SHIFT] := KS[VK_SHIFT]   xor $80;
                                      SHIFT_Pressed:= not(SHIFT_Pressed);
                                    end;
                         {Ctrl}  29:begin
                                      KS[VK_CONTROL] := KS[VK_CONTROL] xor $81;
                                      CONTROL_Pressed:= not(CONTROL_Pressed);
                                    end;
                         {Alt}   56:begin
                                      KS[VK_MENU] := KS[VK_MENU] xor $81;
                                      ALT_Pressed:= not(Alt_Pressed);
                                     end;
                        end;
                        SetKeyboardState(KS);
             end;
 

   symbol  : begin
             VK := MapVirtualKey(SC, MAPVK_VSC_TO_VK);
             if (ToUnicode(VK,SC,KS,@Ch,Sizeof(Ch),0) = 1) then GetUnicodeSymbol:=Ch;
             VK_ALL_CLEAR;
 
end;


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
  Form1.Button28.caption := 'é';
  Form1.Button29.caption := 'ö';
  Form1.Button30.caption := 'ó';
  Form1.Button31.caption := 'ê';
  Form1.Button32.caption := 'å';
  Form1.Button33.caption := 'í';
  Form1.Button34.caption := 'ã';
  Form1.Button35.caption := 'ø';
  Form1.Button36.caption := 'ù';
  Form1.Button37.caption := 'ç';
  Form1.Button38.caption := 'õ';
  Form1.Button39.caption := 'ú';
  Form1.Button42.caption := 'ô';
  Form1.Button78.caption := 'û';
  Form1.Button43.caption := 'â';
  Form1.Button44.caption := 'à';
  Form1.Button45.caption := 'ï';
  Form1.Button46.caption := 'ð';
  Form1.Button47.caption := 'î';
  Form1.Button48.caption := 'ë';
  Form1.Button49.caption := 'ä';
  Form1.Button50.caption := 'æ';
  Form1.Button51.caption := 'ý';
  Form1.Button17.caption := 'ÿ';
  Form1.Button53.caption := '÷';
  Form1.Button54.caption := 'ñ';
  Form1.Button55.caption := 'ì';
  Form1.Button56.caption := 'è';
  Form1.Button57.caption := 'ò';
  Form1.Button58.caption := 'ü';
  Form1.Button59.caption := 'á';
  Form1.Button60.caption := 'þ';
  Form1.Button2.caption := '¸';
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
   Form1.Button28.caption := 'É';
   Form1.Button29.caption := 'Ö';
   Form1.Button30.caption := 'Ó';
   Form1.Button31.caption := 'Ê';
   Form1.Button32.caption := 'Å';
   Form1.Button33.caption := 'Í';
   Form1.Button34.caption := 'Ã';
   Form1.Button35.caption := 'Ø';
   Form1.Button36.caption := 'Ù';
   Form1.Button37.caption := 'Ç';
   Form1.Button38.caption := 'Õ';
   Form1.Button39.caption := 'Ú';
   Form1.Button42.caption := 'Ô';
   Form1.Button78.caption := 'Û';
   Form1.Button43.caption := 'Â';
   Form1.Button44.caption := 'À';
   Form1.Button45.caption := 'Ï';
   Form1.Button46.caption := 'Ð';
   Form1.Button47.caption := 'Î';
   Form1.Button48.caption := 'Ë';
   Form1.Button49.caption := 'Ä';
   Form1.Button50.caption := 'Æ';
   Form1.Button51.caption := 'Ý';
   Form1.Button17.caption := 'ß';
   Form1.Button53.caption := '×';
   Form1.Button54.caption := 'Ñ';
   Form1.Button55.caption := 'Ì';
   Form1.Button56.caption := 'È';
   Form1.Button57.caption := 'Ò';
   Form1.Button58.caption := 'Ü';
   Form1.Button59.caption := 'Á';
   Form1.Button60.caption := 'Þ';
   Form1.Button2.caption := '¨';
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


begin
procedure TForm1.FormCreate(Sender: TObject);
begin
  Form1.ShowModal;
end;


 procedure TForm1.Button2Click(Sender: TObject);
begin
  Memo1.Lines.Add(FormKey.GetUnicodeSymbol);
end;

procedure TForm1.Button3Click(Sender: TObject);

begin
  Memo1.Lines.Add(FormKey.GetUnicodeSymbol);
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Memo1.Lines.Add(FormKey.GetUnicodeSymbol);
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  Memo1.Lines.Add(FormKey.GetUnicodeSymbol);
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  Memo1.Lines.Add(FormKey.GetUnicodeSymbol);
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  Memo1.Lines.Add(FormKey.GetUnicodeSymbol);
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  Memo1.Lines.Add(FormKey.GetUnicodeSymbol);
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
  Memo1.Lines.Add(FormKey.GetUnicodeSymbol);
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
  Memo1.Lines.Add(FormKey.GetUnicodeSymbol);
end;
procedure TForm1.Button11Click(Sender: TObject);
begin
  Memo1.Lines.Add(FormKey.GetUnicodeSymbol);
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
  Memo1.Lines.Add(FormKey.GetUnicodeSymbol);
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
  Memo1.Lines.Add(FormKey.GetUnicodeSymbol);
end;

procedure TForm1.Button14Click(Sender: TObject);
begin
  Memo1.Lines.Add(FormKey.GetUnicodeSymbol);
end;

procedure TForm1.Button28Click(Sender: TObject);
begin
  Memo1.Lines.Add(FormKey.GetUnicodeSymbol);
end;

procedure TForm1.Button29Click(Sender: TObject);
begin
  Memo1.Lines.Add(FormKey.GetUnicodeSymbol);
end;


procedure TForm1.Button30Click(Sender: TObject);
begin
  Memo1.Lines.Add(FormKey.GetUnicodeSymbol);
end;

procedure TForm1.Button31Click(Sender: TObject);
begin
  Memo1.Lines.Add(FormKey.GetUnicodeSymbol);
end;

procedure TForm1.Button32Click(Sender: TObject);
begin
  Memo1.Lines.Add(FormKey.GetUnicodeSymbol);
end;

procedure TForm1.Button33Click(Sender: TObject);
begin
  Memo1.Lines.Add(FormKey.GetUnicodeSymbol);
end;

procedure TForm1.Button34Click(Sender: TObject);
begin
  Memo1.Lines.Add(FormKey.GetUnicodeSymbol);
end;

procedure TForm1.Button35Click(Sender: TObject);
begin
  Memo1.Lines.Add(FormKey.GetUnicodeSymbol);
end;

procedure TForm1.Button36Click(Sender: TObject);
begin
  Memo1.Lines.Add(FormKey.GetUnicodeSymbol);
end;

procedure TForm1.Button37Click(Sender: TObject);
begin
  Memo1.Lines.Add(FormKey.GetUnicodeSymbol);
end;

procedure TForm1.Button38Click(Sender: TObject);
begin
  Memo1.Lines.Add(FormKey.GetUnicodeSymbol);
end;

procedure TForm1.Button39Click(Sender: TObject);
begin
  Memo1.Lines.Add(FormKey.GetUnicodeSymbol);
end;

procedure TForm1.Button40Click(Sender: TObject);
begin
  Memo1.Lines.Add(FormKey.GetUnicodeSymbol);
end;

procedure TForm1.Button42Click(Sender: TObject);
begin
  Memo1.Lines.Add(FormKey.GetUnicodeSymbol);
end;

procedure TForm1.Button78Click(Sender: TObject);
begin
  Memo1.Lines.Add(FormKey.GetUnicodeSymbol);
end;

procedure TForm1.Button43Click(Sender: TObject);
begin
  Memo1.Lines.Add(FormKey.GetUnicodeSymbol);
end;

procedure TForm1.Button44Click(Sender: TObject);
begin
  Memo1.Lines.Add(FormKey.GetUnicodeSymbol);
end;


procedure TForm1.Button45Click(Sender: TObject);
begin
  Memo1.Lines.Add(FormKey.GetUnicodeSymbol);
end;

procedure TForm1.Button46Click(Sender: TObject);
begin
 Memo1.Lines.Add(FormKey.GetUnicodeSymbol);
end;

procedure TForm1.Button47Click(Sender: TObject);
begin
  Memo1.Lines.Add(FormKey.GetUnicodeSymbol);
end;

procedure TForm1.Button48Click(Sender: TObject);
begin
  Memo1.Lines.Add(FormKey.GetUnicodeSymbol);
end;

procedure TForm1.Button49Click(Sender: TObject);
begin
  Memo1.Lines.Add(FormKey.GetUnicodeSymbol);
end;

procedure TForm1.Button50Click(Sender: TObject);
begin
  Memo1.Lines.Add(FormKey.GetUnicodeSymbol);
end;

procedure TForm1.Button51Click(Sender: TObject);
begin
  Memo1.Lines.Add(FormKey.GetUnicodeSymbol);
end;

procedure TForm1.Button17Click(Sender: TObject);
begin
  Memo1.Lines.Add(FormKey.GetUnicodeSymbol);
end;

procedure TForm1.Button53Click(Sender: TObject);
begin
  Memo1.Lines.Add(FormKey.GetUnicodeSymbol);
end;

procedure TForm1.Button54Click(Sender: TObject);
begin
  Memo1.Lines.Add(FormKey.GetUnicodeSymbol);
end;

procedure TForm1.Button55Click(Sender: TObject);
begin
  Memo1.Lines.Add(FormKey.GetUnicodeSymbol);
end;

procedure TForm1.Button56Click(Sender: TObject);
begin
  Memo1.Lines.Add(FormKey.GetUnicodeSymbol);
end;

procedure TForm1.Button57Click(Sender: TObject);
begin
  Memo1.Lines.Add(FormKey.GetUnicodeSymbol);
end;

procedure TForm1.Button58Click(Sender: TObject);
begin
  kMemo1.Lines.Add(FormKey.GetUnicodeSymbol);
end;

procedure TForm1.Button59Click(Sender: TObject);
begin
  Memo1.Lines.Add(FormKey.GetUnicodeSymbol);
end;

procedure TForm1.Button60Click(Sender: TObject);
begin
  Memo1.Lines.Add(FormKey.GetUnicodeSymbol);
end;

procedure TForm1.Button61Click(Sender: TObject);
begin
  Memo1.Lines.Add(FormKey.GetUnicodeSymbol);
end;

procedure TForm1.Button75Click(Sender: TObject);
begin
  Memo1.Lines.Add(FormKey.GetUnicodeSymbol);
end;

procedure TForm1.Button74Click(Sender: TObject);
begin
  Memo1.Lines.Add(FormKey.GetUnicodeSymbol);
end;

procedure TForm1.Button15Click(Sender: TObject);
begin
  Memo1.Lines.Add(FormKey.GetUnicodeSymbol);
end;

procedure TForm1.Button26Click(Sender: TObject);
begin
Memo1.Lines.Add(FormKey.GetUnicodeSymbol);
end;


procedure TForm1.Button16Click(Sender: TObject); 
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
Memo1.Lines.Add(FormKey.GetUnicodeSymbol);
end;


procedure TForm1.Button64Click(Sender: TObject);
begin
Memo1.Lines.Add(FormKey.GetUnicodeSymbol);
end;

procedure TForm1.Button65Click(Sender: TObject);
begin
Memo1.Lines.Add(FormKey.GetUnicodeSymbol);
end;

procedure TForm1.Button20Click(Sender: TObject);
begin
Memo1.Lines.Add(FormKey.GetUnicodeSymbol);
end;

procedure TForm1.Button71Click(Sender: TObject);
begin
Memo1.Lines.Add(FormKey.GetUnicodeSymbol);
end;

procedure TForm1.Button24Click(Sender: TObject);
begin
 Memo1.Lines.Add(FormKey.GetUnicodeSymbol);
end;

procedure TForm1.Button25Click(Sender: TObject);
begin
Memo1.Lines.Add(FormKey.GetUnicodeSymbol);
end;


procedure TForm1.Button22Click(Sender: TObject);
begin
 Memo1.Lines.Add(FormKey.GetUnicodeSymbol);
end;

procedure TForm1.Button52Click(Sender: TObject);
begin
 Memo1.Lines.Add(FormKey.GetUnicodeSymbol);
end.
end.
