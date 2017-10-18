Program ZPD;
Uses CRT;
Const n=10;
Var a,b:integer;
p: array [1..n] of Boolean;
Begin
  ClrScr;
  For a:=1 to n do
  Begin
    p[a]:=TRUE;
  End;
  For a:=1 to n do
  Begin
    b:=1;
    Writeln('a');
    While (a>b) do
    Begin
      b:=2;
      Begin
        If ((a mod b)=0) then p[a]:=FALSE;
      End;
      Inc(b);
    End;
  End;
  For a:=1 to n do
  Begin
    If (p[a])  then Writeln(a);
  End;
End.
