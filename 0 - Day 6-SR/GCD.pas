var
        f:text;
        e,v:array [0..1000] of longint;
        i,n,d,k,a,b,ct:longint;
        kt:boolean;
begin
        assign(f,'GCD.INP');
        reset(f);
        readln(f,n,d);
        for i:= 1 to n do
                read(f,e[i]);
        close(f);

        assign(f,'GCD.OUT');
        rewrite(f);
        for i:= 1 to n do
        begin
                for k:= i+1 to n do
                begin
                        a:= e[i];
                        b:= e[k];
                        kt:= false;
                        while a <> b do
                        begin
                                if a > b then
                                        dec(a,b);
                                if a < b then
                                        dec(b,a);
                                if (a = b) and (a mod d = 0) then
                                begin
                                        kt:= true;
                                        break;
                                end;
                                if (a = b) and (a mod d > 0) then
                                        break;
                        end;
                        if kt then
                        begin
                                inc(ct);
                                v[0]:= e[i];
                                v[ct]:= e[k];
                        end;
                end;
                if kt then break;
        end;
        if ct > 0 then
        begin
                writeln(f,ct+1);
                for i:= 0 to ct do
                        write(f,v[i],' ');
        end
        else
                writeln(f,-1);
        close(f);
end.
