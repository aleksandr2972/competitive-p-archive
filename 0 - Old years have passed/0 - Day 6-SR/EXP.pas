var
        f:text;
        a,b,c:longint;
        p:real;
begin
        assign(f,'EXP.INP');
        reset(f);
        readln(f,a);
        readln(f,b);
        readln(f,c);
        close(f);

        assign(f,'EXP.OUT');
        rewrite(f);
        if (a = 0) or (b = 0) or (c = 0) then
                writeln(f,-1)
        else
        begin
                p:= abs((a+b+c) / (a * b * c));
                writeln(f,p:1:10);
        end;
        close(f);
end.
