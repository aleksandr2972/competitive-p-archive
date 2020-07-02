var
        f:text;
        n,m,b,x,t,max,i:longint;
        st,st2,s:string;
        kt: boolean;
begin
        assign(f,'GAME.INP');
        reset(f);
        readln(f,n);
        close(f);

        assign(f,'GAME.OUT');
        rewrite(f);
        m:= n;
        while m > 0 do
        begin
                b:= m mod 2;
                str(b,s);
                st:= s + st;
                m:= m div 2;
        end;
        st2:= st;
        kt:= true;
        while kt do
        begin
                st:= st[length(st)] + st;
                delete(st,length(st),1);
                if st = st2 then
                        kt:= false;
                t:= 0;
                m:= 1;
                for i:= length(st) downto 1 do
                begin
                        val(st[i],x);
                        inc(t,x*m);
                        m:= m * 2;
                end;
                if t > max then
                        max:= t;
        end;
        writeln(f,max);
        close(f);
end.

