var
        f:text;
        n,k,i,r,d,b,re,j:longint;
        st,s:string;
begin
        assign(f,'NUMBER.INP');
        reset(f);
        readln(f,n,k);
        close(f);

        assign(f,'NUMBER.OUT');
        rewrite(f);
        for i:= 1 to n do
        begin
                r:= i;
                d:= 0;
                st:='';
                while r > 0 do
                begin
                        b:= r mod 2;
                        str(b,s);
                        st:= s + st;
                        r:= r div 2;
                end;
                for j:= 1 to length(st) do
                        if st[j] = '0' then
                                inc(d);
                if d = k then
                        inc(re);
        end;
        writeln(f,re);
        close(f);
end.
