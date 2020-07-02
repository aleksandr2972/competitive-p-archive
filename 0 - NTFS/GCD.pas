var

        a,b:array [0..1000] of longint;
        f:text;
        i,x,d,y,n,k,tmp:longint;
        kt:boolean;

begin
        assign(f,'GCD.INP');
        reset(f);
        readln(f,n,a[0]);
        for i:= 1 to n do
                read(f,a[i]);
        close(f);

        assign(f,'GCD.OUT');
        rewrite(f);
        for i:= 1 to n do
        begin
                x:= a[i];
                y:= a[0];
                kt:= true;
                while kt do
                begin
                        if x > y then
                                x:= x - y;
                        if x < y then
                                y:= y - x;
                        if x = y then
                        begin
                                if (x = a[0]) or (y = a[0]) then
                                begin
                                        inc(d);
                                        kt:= false;
                                        b[d]:= a[i];
                                end;
                                break;
                        end;
                end;
        end;
        writeln(f,d);
        for i:= 1 to d do
                for k:= i to d do
                        if a[i] < a[k] then
                        begin
                                tmp:= a[i];
                                a[i]:= a[k];
                                a[k]:= tmp;
                        end;

        if d > 0 then
                for i:= 1 to d do
                        write(f,b[i],' ')
        else
                writeln(f,-1);
        close(f);
end.