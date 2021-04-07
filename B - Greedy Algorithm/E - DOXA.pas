//Fri-Sat, Mar 5-6, 2021
//http://ntucoder.net/Problem/Details/105

type
        city = record
                pos,dis,price: integer;
end;

type
        stop = array [1..100] of city;
var
        f:text;
        a,b: stop;
        i,n,dick,sum,last,k:integer;

        procedure quickshort(var a: stop; left,right: integer);
        var
                p,l,r: integer;
                tam: city;
        begin
                p:= a[(left+right) div 2].price;
                l:= left;
                r:= right;
                while (l<=r) do
                begin
                        while (a[l].price < p) do inc(l);
                        while (a[r].price > p) do dec(r);
                        if (l<=r) then
                        begin
                                tam:= a[l];
                                a[l]:= a[r];
                                a[r]:= tam;
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
        assign(f,'DOXA.inp');
        reset(f);
        readln(f,n);
        dec(n);
        for i:= 1 to n do
        begin
                a[i].pos:= i;
                read(f,a[i].dis);
        end;
        for i:= 1 to n do
                read(f,a[i].price);
        close(f);
        b:= a;


        assign(f,'DOXA.out');
        rewrite(f);
        sum:= 0;
        quickshort(a,1,n);
        last:= n+1;
        for i:= 1 to n do
        begin
                if a[i].pos > last then
                        continue
                else
                begin
                        dick:= 0;
                        for k:= (last-1) downto a[i].pos do
                                dick:= dick + b[k].dis;
                        sum:= sum + dick*a[i].price;
                        if a[i].pos = 1 then
                                break;
                        last:= a[i].pos;
                end;
        end;
        writeln(f,sum);
        close(f);
end.
