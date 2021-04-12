var
        f:text;
        a,b:integer;
begin
        assign(f,'Coprime.inp');
        reset(f);
        readln(f,a,b);
        close(f);

        assign(f,'Coprime.out');
        rewrite(f);
        while a <> b do
        begin
                if a > b then
                        a:= a - b;
                if b > a then
                        b:= b - a;
                if (a = b) and (a = 1) then
                begin
                        write(f,'Nguyen to cung nhau');
                        break;
                end;
                if (a = b) and (a <> 1) then
                begin
                        write(f,'Khong nguyen to cung nhau');
                        break;
                end;
        end;
        close(f);
end.



