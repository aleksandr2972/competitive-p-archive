//Apr 12, 2021
//https://www.spoj.com/PTIT/problems/PTIT127C/
type
        meow = record
                a,b: longint;
        end;
        gay = array [1..100000] of meow;
        list = array [1..100000] of longint;
var
        f: text;
        a,b: gay;
        l: list;
        i,n,k,max: longint;

        procedure quickshort(var a: gay; left,right: longint);
        var
                x,l,r: longint;
                tmp: meow;
        begin
                x:= a[(left+right) div 2].b;
                l:= left;
                r:= right;
                while (l<= r) do
                begin
                        while (a[l].b < x) do inc(l);
                        while (a[r].b > x) do dec(r);
                        if (l<=r) then
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
        assign(f,'BTPH.inp');
        reset(f);
        readln(f,n);
        for i:= 1 to n do
                readln(f,a[i].a,a[i].b);
        close(f);

        assign(f,'BTPH.out');
        rewrite(f);
        quickshort(a,1,n);
        for i:= 1 to n do
                l[i]:= 1;
        for i:= 1 to n do
                for k:= 1 to i-1 do
                        if a[i].a >= a[k].b then
                                if l[i] < l[k] + 1 then
                                        l[i]:= l[k]+1;
        max:= 0;
        for i:= 1 to n do
                if l[i] > max then
                        max:= l[i];
        writeln(f,max);
        close(f);
end.