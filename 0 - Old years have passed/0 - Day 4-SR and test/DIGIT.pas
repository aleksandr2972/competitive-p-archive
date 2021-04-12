var
        f:text;
        b,t:string;
        x,i,m,KQ:longint;
begin
        assign(f,'DIGIT.INP');
        reset(f);
        readln(f,b);
        readln(f,t);
        close(f);

        assign(f,'DIGIT.OUT');
        rewrite(f);
        m:= 1;

        for i:= length(t) downto 1 do
        begin
                val(t[i],x);
                kq:= kq + (x * m);
                m:= m * 3;
        end;

        writeln(f,kq);
        close(f);

end.