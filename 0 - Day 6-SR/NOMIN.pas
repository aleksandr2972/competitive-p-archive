var
        a:array [1..10000] of integer;
        f:text;
        n,i,d:integer;

begin
        assign(f,'NOMIN.INP');
        reset(f);
        readln(f,n);
        for i:= 1 to n do
                read(f,a[i]);
        close(f);

        assign(f,'NOMIN.OUT');
        rewrite(f);
        i:= 1;
        while i <= n do
        begin
                while a[i] < a[i+1] do
                        inc(i);
                while a[i] > a[i+1] do
                        inc(i);
                inc(d);
                inc(i);
        end;
        writeln(f,d);
        close(f);
end.