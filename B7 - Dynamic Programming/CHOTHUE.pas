type
        meow = record
                a,b,c: longint;
        end;
        gay = array [1..10000] of meow;
        list = array [1..10000] of integer;
var
        a: gay;
        l: list;
        f: text;
        max: longint;
        i,n,k: integer;

        procedure quickshort(var a: gay; left,right: integer);
        var
                x,l,r: integer;
                tmp: meow;
        begin
                x:= a[(left + right) div 2].b;
                l:= left;
                r:= right;
                while (l <= r) do
                begin
                        while (a[l].c < x) do inc(l);
                        while (a[r].c > x) do dec(r);
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

begin                                         0
        assign(f,'CHOTHUE.inp');
        reset(f);
        readln(f,n);
        for i:= 1 to n do
                readln(f,a[i].a,a[i].b,a[i].c);
        close(f);

        assign(f,'CHOTHUE.out');
        rewrite(f);
        for i:= 1 to n do
                l[i]:= a[i].c;
        quickshort(a,1,n);
        for i:= 1 to n do
                for k:= 1 to i-1 do
                        if a[k].b <= a[i].a then
                                if l[i] < l[k] + a[k].c then
                                        l[i]:= l[k] + a[k].c;
        max:= 0;
        for i:= 1 to n do
                if max < l[i] then
                        max:= l[i];
        writeln(f,max);
        close(f);                 2
end.