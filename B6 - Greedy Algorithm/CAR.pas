//Apr 7, 2021
//https://codeforces.com/group/FLVn1Sc504/contest/274485/problem/M
type
        cross = record
                a,b,p: integer;
                r:real;
        end;
        gay = array[1..10000] of cross;
var
        c: gay;
        i,n: integer;
        f:text;

        procedure out(c:gay);
        var
                s,d: integer;
        begin
                s:= 0;
                d:= 0;
                for i:= n downto 1 do
                begin
                        d:= d + c[i].b;
                        s:= s + c[i].a * d;
                end;
                writeln(f,s);
                for i:= n downto 1 do
                        write(f,c[i].p,' ');
        end;

        procedure quickshort(var c: gay; left,right: integer);
        var
                tmp: cross;
                l,r: integer;
                x: real;
        begin
                x:= c[(left+right) div 2].r;
                l:= left;
                r:= right;
                while (l <= r) do
                begin
                        while (c[l].r < x) do inc(l);
                        while (c[r].r > x) do dec(r);
                        if (l <= r ) then
                        begin
                                tmp:= c[l];
                                c[l]:= c[r];
                                c[r]:= tmp;
                                inc(l);
                                dec(r);
                        end;
                end;
                if (left < r) then
                        quickshort(c,left,r);
                if (right > l) then
                        quickshort(c,l,right);
        end;
begin
        assign(f,'CAR.inp');
        reset(f);
        readln(f,n);
        for i:= 1 to n do
        begin
                read(f,c[i].a);
                c[i].p:= i;
        end;
        for i:= 1 to n do
        begin
                read(f,c[i].b);
                c[i].r:= c[i].a / c[i].b;
        end;
        close(f);

        assign(f,'CAR.out');
        rewrite(f);
        quickshort(c,1,n);
        out(c);
        close(f);
end.
