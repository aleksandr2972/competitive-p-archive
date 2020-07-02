var
        f:text;
        n,b,i,k,t,d:longint;
        a:array [1..10000] of longint;
begin
        assign(f,'PAIRS.INP');
        reset(f);
        readln(f,n,b);
        for i:= 1 to n do
                read(f,a[i]);
        close(f);

        assign(f,'PAIRS.OUT');
        rewrite(f);
        for i:= 1 to n do
        begin
                for k:= i to n do
                begin
                        t:= 0;
                        inc(t,a[k] + a[i]);
                        if t = b then
                                inc(d);
                end;
        end;
        writeln(f,d);
        close(f);
end.