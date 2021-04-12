type
        gay = array[1..100] of string;
var
        s1,s2: string;
        f:text;
        a:gay;
        n,i: integer;
        num: longint;

        function less(x,y: string): shortint;
        var
                i,lx,ly: integer;
        begin
                lx:= length(x);
                ly:= length(y);
                if lx = ly then
                begin
                        for i:= 1 to lx do
                        begin
                                if x[i] < y[i] then
                                        exit(1);
                                if x[i] > y[i] then
                                        exit(0);
                        end;
                        exit(2);
                end;
                if lx > ly then
                begin
                        for i:= 1 to ly do
                        begin
                                if x[i] < y[i] then
                                        exit(1);
                                if x[i] > y[i] then
                                        exit(0);
                        end;
                        if x[ly+1] > y[1] then
                                exit(0);

                        exit(1);
                end
                else
                begin
                        for i:= 1 to lx do
                        begin
                                if x[i] < y[i] then
                                        exit(1);
                                if x[i] > y[i] then
                                        exit(0);
                        end;
                        if y[ly+1] > x[1] then
                                exit(1);
                        exit(0);
                end;
        end;

        procedure quickshort(var a:gay; left,right: integer);
        var
                tmp,x: string;
                l,r: integer;
        begin
                x:= a[(left+right) div 2];
                r:= right;
                l:= left;
                while (l <= r) do
                begin
                        while less(a[l],x) = 0 do inc(l);
                        while less(a[r],x) = 1 do dec(r);
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
        assign(f,'MASO.inp');
        reset(f);
        n:= 0;
        while not eof(f) do
        begin
                inc(n);
                read(f,num);
                str(num,s1);
                a[n]:= s1;
        end;
        close(f);

        assign(f,'MASO.out');
        rewrite(f);
        quickshort(a,1,n);
        for i:= n downto 1 do
        begin
                val(a[i],num);
                if num mod 2 = 0 then
                begin
                        s1:= a[i];
                        a[i]:= a[n];
                        a[n]:= s1;
                        break;
                end;
        end;
        for i:= 1 to n do
                write(f,a[i]);
        close(f);
end.
