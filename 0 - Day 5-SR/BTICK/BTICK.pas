var
        f:text;
        n,k,p1,p2,t1,t2:longint;
begin
        assign(f,'BTICK.INP');
        reset(f);
        readln(f,n,k,p1,p2);
        close(f);

        assign(f,'BTICK.OUT');
        rewrite(f);
        t1:= p2 + (p1 * (n-k));
        t2:= (p1 * n);
        if t1 > t2 then
                writeln(f,t2)
        else
                writeln(f,t1);
        close(f);
end.