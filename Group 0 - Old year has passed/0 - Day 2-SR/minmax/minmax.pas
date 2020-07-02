var
        f:text;
        i,x,max,min:integer;
        n:string;
begin
        assign(f,'minmax.inp');
        reset(f);
        readln(f,n);
        close(f);

        assign(f,'minmax.out');
        rewrite(f);
        min:= 10;
        for i:= 1 to length(n) do
        begin
                val(n[i],x);
                if x > max then
                        max:= x;
                if x < min then
                        min:= x;
        end;
        writeln(f,min,' ',max);
        close(f);
end.