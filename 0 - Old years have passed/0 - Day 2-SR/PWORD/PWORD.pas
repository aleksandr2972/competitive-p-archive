var
        f:text;
        s:string;
        i,x,p:integer;
begin
        assign(f,'PWORD.INP');
        reset(f);
        readln(f,s);
        close(f);

        assign(f,'PWORD.OUT');
        rewrite(f);
        for i:= 1 to length(s) do
                if s[i] in ['1'..'9'] then
                begin
                        val(s[i],x);
                        inc(p,x);
                end;
        writeln(f,p);
        close(f);
end.
