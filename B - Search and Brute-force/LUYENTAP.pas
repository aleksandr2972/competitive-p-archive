type
        gay = array [1..10000] of longint;
var
        n,k,i,d,s,min,j: longint;
        a: gay;
        f: text;
        kt: boolean;
begin
        assign(f,'LUYENTAP.inp');
        reset(f);
        readln(f,n,k);
        for i:= 1 to n do
                read(f,a[i]);
        close(f);

        assign(f,'LUYENTAP.out');
        rewrite(f);
        min:= 50001;
        for i:= 1 to n do
        begin
                s:= 0;
                d:= 0;
                for j:= i to n do
                begin
                        inc(s,a[j]);
                        inc(d);
                        if ((s > k) or (s = k)) then
                                if (d < min) then
                                begin
                                        min:= d;
                                        kt:= true;
                                        break;
                                end;
                end;
        end;
        if kt then
                writeln(f,min)
        else
                writeln(f,-1);
        close(f);
end.