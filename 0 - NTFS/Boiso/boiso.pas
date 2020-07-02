var
        f:text;
        d,n,i,m:integer;
        s:string;
        kt:boolean;
begin
        assign(f,'boiso.inp');
        reset(f);
        readln(f,n);
        close(f);

        assign(f,'boiso.out');
        rewrite(f);
        m:= n;
        while (kt = false) do
        begin
                inc(d);
                n:= m * d;
                str(n,s);
                kt:= true;
                for i:= 1 to length(s) do
                        if (s[i] <> '0') and (s[i] <> '1') then
                                kt:= false;
                if kt = true then
                begin
                        writeln(f,n);
                        break;
                end;
        end;
        close(f);
end.
