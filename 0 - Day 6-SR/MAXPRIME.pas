var
        f,g:text;
        n,m,i,k,v,max:longint;
begin
        assign(f,'MAXPRIME.INP');
        assign(g,'MAXPRIME.OUT');
        reset(f);
        rewrite(g);
        readln(f,n);
        for i:= 1 to n do
        begin
                readln(f,v);
                if v > 1 then
                begin
                        for k:= 2 to v do
                                if v mod k = 0 then
                                        break;
                        if (v = k) and (v > max) then
                                max:= v;
                end;
        end;
        writeln(g,max);
        close(f);
        close(g);
end.