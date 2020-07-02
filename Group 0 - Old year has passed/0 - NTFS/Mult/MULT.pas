var
        f:text;
        p,q,r,i,m,k,x: longint;
        st,s:string;

begin
        assign(f,'MULT.INP');
        reset(f);
        readln(f,p,q,r);
        close(f);

        assign(f,'MULT.OUT');
        rewrite(f);
        for i:= 2 to 16 do
        begin
                m:= p * q;
                st:= '';
                while m > 0 do
                begin
                        k:= m mod i;
                        str(k,s);
                        st:= s + st;
                        m:= m div i;
                end;
                val(st,x);
                if x = r then
                begin
                        writeln(f,i);
                        break;
                end;
        end;
        if x <> r then
                writeln(f,0);
        close(f);
end.


