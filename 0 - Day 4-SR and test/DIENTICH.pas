var
        f:text;
        a:array [1..100,1..100] of char;
        b:array [1..200] of char;
        m,n,i,k,j,l,v,r,d,max:integer;
        kt:boolean;
begin
        assign(f,'DIENTICH.INP');
        reset(f);
        readln(f,m,n);
        for i:= 1 to m do
        begin
                for k:= 1 to n do
                        read(f,a[i,k]);
                readln(f);
        end;
        close(f);

        assign(f,'DIENTICH.OUT');
        rewrite(f);
        for i:= 1 to m do
        begin
                for k:= 1 to n do
                        for j:= m downto 1 do
                                for l:= n downto 1 do
                                begin
                                        d:= 0;
                                        kt:= true;
                                        for v:= i to j do
                                                for r:= k to l do
                                                begin
                                                        inc(d);
                                                        b[d]:= a[v,r];
                                                end;

                                        for v:= 1 to d do
                                        begin
                                                for r:= v+1 to d do
                                                        if (b[v] = b[r]) then
                                                        begin
                                                                kt:= false;
                                                                break;
                                                        end;
                                                if kt = false then
                                                        break;
                                        end;


                                        if kt and (d > max) then
                                                max:= d;
                                end;
        end;
        writeln(f,max);
        close(f);
end.
