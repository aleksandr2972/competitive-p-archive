var
        f:text;
        x,y:array [1..500000] of integer;
        i,n,k,d:longint;

begin
        assign(f,'DAYSO.INP');
        reset(f);
        readln(f,n);
        for i:= 1 to n do
                read(f,x[i]);
        for i:= 1 to n do
                read(f,y[i]);
        close(f);

        assign(f,'DAYSO.OUT');
        rewrite(f);
        for i:= 1 to n do
        begin
                for k:=  1 to n do
                        if x[i] = y[k] then
                        begin
                                inc(d);
                                break;
                        end;
        end;
        writeln(f,d);
        close(f);
end.

