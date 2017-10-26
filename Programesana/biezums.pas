Program biezums;
Uses CRT;
Var a,b,One,Three,Seven,Nine:DWord;
f:text;
Begin
      ClrScr;
      One:=0;
      Three:=0;
      Seven:=0;
      Nine:=0;
      b:=0;
      Assign(f,'result.txt');
      Reset(f);
      While NOT(EoF(f)) do
      Begin
            Read(f,a);
            a:=a mod 10;
            Inc(b);
            Case a of
                    1: Inc(One);
                    3: Inc(Three);
                    7: Inc(Seven);
                    9: Inc(Nine);
            End;
      End;
      Writeln('1 = ',One,'   ',(One/b):10:8);
      Writeln('3 = ',Three,'   ',(Three/b):10:8);
      Writeln('7 = ',Seven,'   ',(Seven/b):10:8);
      Writeln('9 = ',Nine,'   ',(Nine/b):10:8);
      Writeln('Total = ',((One+Three+Seven+Nine)/b):10:8);
      Readln;
End.
