// Apr 7, 2021
// https://vn.spoj.com/problems/C11ID/

type
        gay = array[1..10000] of longint;
var
        f:text;
        a,b:gay;
        n,i,s: integer;
        procedure quickshort(var a:gay; left,right: integer);
        var
                x,l,r,tmp: longint;
        begin
                x:= a[(left+right)div 2];
                l:= left;
                r:= right;
                while (l<= r) do
                begin
                        while (a[l] < x) do inc(l);
                        while (a[r] > x) do dec(r);
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
        assign(f,'C11ID.inp');
        reset(f);
        readln(f,n);
        for i:= 1 to n do
                readln(f,a[i]);
        close(f);

        assign(f,'C11ID.out');
        rewrite(f);
        quickshort(a,1,n);
        s:= 1;
        for i:= 1 to n do
                s:= s * (a[i] - i + 1);
        writeln(f,s);
        close(f);
end.
