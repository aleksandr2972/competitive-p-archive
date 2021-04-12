var
        f,g:text;
        n,p,i:longint;
        kt:boolean;
        a:array [1..3] of byte;
begin
        assign(f,'STREET.INP');
        assign(g,'STREET.OUT');
        reset(f);
        rewrite(g);
        a[1]:= 3;
        a[2]:= 5;
        a[3]:= 7;
        while not eof(f) do
        begin
                readln(f,n);
                inc(p);
                i:= 1;
                kt:= true;
                while kt do
                begin
                        while n mod a[i] = 0 do
                                n:= n div a[i];

                        if n = 1 then
                        begin
                                if p mod 2 = 0 then
                                        writeln(g,'R');
                                if p mod 2 > 0 then
                                        writeln(g,'L');
                                break;
                        end;

                        if (i = 3) and (n > 1) then
                        begin
                                writeln(g,'N');
                                kt:= false;
                        end;

                        inc(i);
                end;
        end;
        close(f);
        close(g);
end.

