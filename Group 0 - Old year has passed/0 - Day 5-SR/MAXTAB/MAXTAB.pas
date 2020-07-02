var
        f:text;
        a:array [1..100,1..100] of integer;
        n,i,k,j,l,v,r,t,max:integer;
begin
        assign(f,'MAXTAB.INP');
        reset(f);
        readln(f,n);
        for i:= 1 to n do
        begin
                for k:= 1 to n do
                        read(f,a[i,k]);
                readln(f);
        end;
        close(f);

        assign(f,'MAXTAB.OUT');
        rewrite(f);
        for i:= 1 to n do
                for k:= 1 to n do
                        for j:= n downto 1 do
                                for l:= n downto 1 do
                                        if ((j-i) = (l-k)) and ((j-i+1) <> n) and ((l-k+1) <> n) then
                                        begin
                                                t:= 0;
                                                for v:= i to j do
                                                        for r:= k to l do
                                                                inc(t,a[v,r]);
                                                if t > max then
                                                        max:= t;
                                        end;
        writeln(f,max);
        close(f);
end.


