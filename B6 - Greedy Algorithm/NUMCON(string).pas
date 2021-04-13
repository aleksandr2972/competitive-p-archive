type
        gay = array [1..100] of string;
var
        f:text;
        n,i: shortint;
        s: widestring;
        a: gay;

        function less(a,b: string): shortint;
        var
                l1,l2,i: shortint;
        begin
                l1:= length(a);
                l2:= length(b);
                if l1 = l2 then
                begin
                        for i:= 1 to l1 do
                        begin
                                if a[i] > b[i] then
                                        exit(0);
                                if b[i] > a[i] then
                                        exit(1);
                        end;
                        exit(2);
                end;
                if l1 > l2 then
                begin
                        for i:= 1 to l2 do
                        begin
                                if a[i] > b[i] then
                                        exit(0);
                                if a[i] < b[i] then
                                        exit(1);
                        end;
                        if a[l2+1] > b[i] then
                                exit(0)
                        else
                                exit(1);
                end
                else
                begin
                        for i:= 1 to l1 do
                        begin
                                if a[i] > b[i] then
                                        exit(0);
                                if a[i] < b[i] then
                                        exit(1);
                        end;
                        if b[l1+1] > a[i] then
                                exit(1)
                        else
                                exit(0);
                end;
        end;
        procedure quickshort(var a: gay; left,right: integer);
        var
                x,tmp: string;
                l,r: integer;
        begin
                x:= a[(left+right) div 2];
                l:= left;
                r:= right;
                while (l <= r) do
                begin
                        while less(a[l],x) = 1 do inc(l);
                        while less(a[r],x) = 0 do dec(r);
                        if (l <= r) then
                        begin
                                tmp:= a[l];
                                a[l]:= a[r];
                                a[r]:= tmp;
                                inc(l);
                                dec(r);
                        end;
                end;
                if (left < r) then
                        quickshort(a,left,r);
                if (right > l) then
                        quickshort(a,l,right);
        end;

begin
        assign(f,'NUMCON.inp');
        reset(f);
        n:= 0;
        while not eof(f) do
        begin
                inc(n);
                readln(f,a[n]);
        end;
        close(f);

        assign(f,'NUMCON.out');
        rewrite(f);
        quickshort(a,1,n);
        for i:= n downto 1 do
                s:= s + a[i];
        writeln(f,s);
        close(f);
end.