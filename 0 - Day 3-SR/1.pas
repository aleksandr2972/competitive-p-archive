var

        i,n:longint;
begin
        readln(n);
        for i:=2 to n do
                while n mod i=0 do
                begin
                        write(i,' ');
                        n:=n div i;
                end;
        readln;
end.