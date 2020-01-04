// Sap xep dem phan phoi
// Ngay 4.12.2020

var
        f:text;
        a,d:array [0..10000] of integer;
        i,n,max,k:integer;
begin
        assign(f,'distrocount.inp');
        reset(f);
        while not eof(f) do
        begin
                inc(n);
                read(f,a[n]);
        end;
        close(f);

        assign(f,'distrocount.out');
        rewrite(f);
        //Danh dau
        for i:= 1 to n do
        begin
                inc(d[a[i]]);
                if a[i] > max then
                         max:= a[i];
        end;
        //Xuat ra day so da sap xep
        for i:= 1 to max do
                for k:= 1 to d[i] do
                        write(f,i,' ');

        close(f);
end.
