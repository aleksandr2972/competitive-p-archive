var
        f,g:text;
        a: array [1..100000] of integer;
        k,i,m,t,r,max: longint;

begin
        assign(f,'EXP.INP');
        assign(g,'EXP.OUT');
        reset(f);
        rewrite(g);
        readln(f,k);
        for i:= 1 to (k-1) do
        begin
                m:= 0;
                t:= 0;
                for r:= 1 to (i-1) do
                        if i mod r = 0 then
                        begin
                                inc(m);
                                a[m]:= r;
                        end;

                for r:= 1 to m do
                        inc(t,a[r]);
                if (t = i) and (t > max) then
                        max:= t;
        end;
        writeln(g,max);
        close(f);
        close(g);
end.

