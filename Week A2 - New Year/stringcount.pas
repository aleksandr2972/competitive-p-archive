//So lan xuat hien cua cac ky tu trong chuoi
//Ngay 04.01.2020

var
        mst:string;
        v,i,k,max:integer;
        f:text;
        d:array[1..122] of integer;
begin
        assign(f,'stringcount.inp');
        reset(f);
        read(f,mst);
        close(f);

        assign(f,'stringcount.out');
        rewrite(f);
        for i:= 1 to length(mst) do
        begin
                v:= ord(mst[i]) - 64;
                inc(d[v]);
                if v > max then
                        max:= v;
        end;

        for i:= 1 to max do
                if d[i] > 0 then
                begin
                        write(f,chr(i+64),' ',d[i]);
                        writeln(f);
                end;
        close(f);
end.