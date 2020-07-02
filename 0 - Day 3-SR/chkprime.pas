var
        n,i:longint;
        function chkprime(i:integer):boolean;
        var
                k:integer;
        begin
                chkprime:= true;
                for k:= 2 to i do
                        if i mod k = 0 then
                                break;
                if k <> i then
                        chkprime:= false;
        end;
begin
        readln(n);
        for i:= 2 to n do
                if chkprime(i) then write(i,' ');
        readln;
end.