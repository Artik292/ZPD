Program Lol;
Uses CRT,DOS;
Const n=50000; //29496729;  4294967295;
Var a,b,c,d:DWord;
time1,time2,time3:Int64;
p: array [1..1000000] of boolean;
f: Text;
Begin
  d:=100;
  time1:=GetMsCount;
  Writeln(time1);
  //ClrScr;
  Assign(f,'result.txt');
  Rewrite(f);
  For c:=1 to n do
  Begin
    p[c]:=TRUE;
  End;
  For a:=2 to n do
  Begin
    For b:=2 to n do
    Begin
      If (a<>b) then
      Begin
        If ((b<>1) and (a<>1)) then
        Begin
          If ((a mod b)=0) then
          Begin
            p[a]:=FALSE;
            //Halt;
          End;
        End;
      End;
    End;
  End;
  For c:=2 to n do
  Begin
    If (p[c]) then
    Begin
      {If c<d then} write(f,c,'  ')
      {Else
      Begin
        Writeln(f);
        Write(f,c,'  ');
        d:=d+100;
      End;}
    End;
  End;
  Close(f);
  time2:=GetMsCount;
  Writeln(time2);
  Writeln(time2-time1);
  Writeln(time2,' ',time1);
  Readln;
  //Added
  {Assign(f,'result.txt');
  Reset(f);}

End.
