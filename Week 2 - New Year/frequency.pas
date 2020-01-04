// Tim so lan xuat hien cua mot gia tri trong mot mang
// Ngay 4.12.2020

var
        f:text;
        a,d:array [0..10000] of integer;
        i,n,max,maxp:integer;
begin
        assign(f,'frequency.inp');
        reset(f);
        while not eof(f) do
        begin
                inc(n);
                read(f,a[n]);
        end;
        close(f);

        assign(f,'frequency.out');
        rewrite(f);
        for i:= 1 to n do
        begin
                inc(d[a[i]]);
                if d[a[i]] > max then
                begin
                        max:= d[a[i]];
                        maxp:= a[i];
                end;
        end;
        writeln(f,'So ',maxp,' co tan so la ',max);
        close(f);
end.
