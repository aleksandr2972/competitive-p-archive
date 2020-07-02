var
        f:text;
        a:array [1..1000000] of integer;
        i,n,k,t1,t2:longint;
        tmp:integer;

begin
        assign(f,'MAX.INP');
        reset(f);
        readln(f,n);
        for i:= 1 to n do
                read(f,a[i]);
        close(f);

        assign(f,'MAX.OUT');
        rewrite(f);
        for i:= 1 to n do
        begin
                for k:= i to n do
                        if a[i] > a[k] then
                        begin
                                tmp:= a[i];
                                a[i]:= a[k];
                                a[k]:= tmp;
                        end;

        end;
        t1:= a[1] * a[2] * a[n];
        t2:= a[n-2] * a[n-1] * a[n];
        if t1 > t2 then
                writeln(f,t1)
        else
                writeln(f,t2);
        close(f);
end.
