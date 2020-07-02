var
        f:text;
        n,i,t,k,max,d,c:integer;
        a:array [1..1000] of integer;
begin
        assign(f,'SUBSEQ.INP');
        reset(f);
        readln(f,n);
        for i:= 1 to n do
                read(f,a[i]);
        close(f);

        assign(f,'SUBSEQ.OUT');
        rewrite(f);
        for i:= 1 to n do
        begin
                t:= 0;
                for k:= i to n do
                begin
                        inc(t,a[k]);
                        if t > max then
                        begin
                                max:= t;
                                d:= i;
                                c:= k;
                        end;
                end;
        end;
        writeln(f,max,' ',d,' ',c,' ');
        close(f);
end.
