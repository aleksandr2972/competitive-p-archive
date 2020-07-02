var
        f:text;
        i,n,k,d,t,max,p:integer;
        a: array [1..10000] of integer;
begin
        assign(f,'ZEROSEQ.INP');
        reset(f);
        readln(f,n);
        for i:= 1 to n do
                read(f,a[i]);
        close(f);

        assign(f,'ZEROSEQ.OUT');
        rewrite(f);
        for i:= 1 to n do
        begin
                d:= 0;
                t:= 0;
                for k:= i to n do
                begin
                        inc(t,a[k]);
                        inc(d);
                        if t = 0 then
                                if d > max then
                                begin
                                        max:= d;
                                        p:= i;
                                end;
                end;
        end;
        if max = 0 then
                writeln(f,-1,' ',-1)
        else
                writeln(f,max,' ',p);
        close(f);
end.
