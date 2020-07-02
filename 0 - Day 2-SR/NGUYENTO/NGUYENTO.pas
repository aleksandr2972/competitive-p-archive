var
        f:text;
        a:array [1..1000] of integer;
        i,n,k,d,b,e,max:integer;
        kt:boolean;
begin
        assign(f,'NGUYENTO.inp');
        reset(f);
        readln(f,n);
        for i:= 1 to n do
                read(f,a[i]);
        close(f);

        assign(f,'NGUYENTO.out');
        rewrite(f);
        for i:= 1 to n do
        begin
                kt:= false;
                if (a[i] < a[i+1]) or (a[i] = a[i+1]) then
                begin
                        for k:= 2 to a[i] do
                                if a[i] mod k = 0 then
                                        break;
                        if a[i] = k then
                        begin
                                inc(d);
                                kt:= true;
                        end;
                end;
                if kt = false then
                begin
                        if d > max then
                        begin
                                b:= i-d;
                                e:= i-1;
                                max:= d;
                        end;
                        d:= 0;
                end;
        end;
        for i:= b to e do
                write(f,a[i],' ');
        close(f);
end.