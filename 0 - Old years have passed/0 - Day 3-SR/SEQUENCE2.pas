var
        f,g:text;
        s,st:string;
        i,n,k,x:longint;
begin
        assign(f,'SEQUENCE.INP');
        assign(g,'SEQUENCE.OUT');
        reset(f);
        rewrite(g);
        while not eof(f) do
        begin
                readln(f,n);
                x:= 1;

                if n > 1 then
                begin
                        for i:= 2 to n do
                        begin
                                str(x,s);
                                st:='';
                                for k:= length(s) downto 1 do
                                        st:= st + s[k];
                                val(st,x);
                                inc(x,2);
                        end;
                        writeln(g,x);
                end
                else
                        writeln(g,1);
        end;
        close(f);
        close(g);
end.
