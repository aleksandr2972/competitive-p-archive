var
        n,d,max,i,k,maxd: longint;
        a: array [1..1000000] of integer;
        f:text;
begin
        assign(f,'PIXEL.inp');
        reset(f);
        readln(f,n);
        d:= 0;
        max:= 0;
        for i:= 1 to n do
        begin
                read(f,k);
                if a[k] = 0 then
                        inc(d);
                inc(a[k]);
                if k > max then
                        max:= k;
        end;
        close(f);

        assign(f,'PIXEL.out');
        rewrite(f);
        maxd:= 0;
        for i:= 1 to max do
                if a[i] > maxd then
                        maxd:= a[i];
        writeln(f,d);
        writeln(f,maxd);
        close(f);
end.