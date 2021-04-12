var
        a: array[1..10000] of integer;
        f: text;
        i,d,n: integer;
        kt1,kt2: boolean;

begin
        assign(f,'NGONDOI.inp');
        reset(f);
        readln(f,n);
        for i:= 1 to n do
                read(f,a[i]);
        close(f);

        assign(f,'NGONDOI.out');
        rewrite(f);
        i:= 1;
        d:= 0;
        while (i < n) do
        begin
                kt1:= false;
                kt2:= false;
                while (a[i] < a[i+1]) do
                begin
                        inc(i);
                        kt1:= true;
                end;
                while (a[i] > a[i+1]) do
                begin
                        inc(i);
                        kt2:= true;
                end;
                if (i >= n) then
                        break;
                if kt1 and kt2 then
                        inc(d);
        end;
        writeln(f,d);
        close(f);
end.
