var
        f,g:text;
        n,i,t:integer;
        a:array [0..100] of integer;
begin
        assign(f,'XE.INP');
        reset(f);
        readln(f,n);
        for i:= 1 to n do
                read(f,a[i]);
        close(f);

        assign(f,'CAN.OUT');
        assign(g,'HUY.OUT');
        rewrite(f);
        rewrite(g);
        for i:= 1 to n do
        begin
                inc(t,a[i]);
                if a[i] > 20 then
                        writeln(g,i);
        end;
        writeln(f,t);
        close(f);
        close(g);
end.