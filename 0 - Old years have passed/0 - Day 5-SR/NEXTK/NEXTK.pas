var
        f:text;
        k,d,i,j,v:integer;
        n,tra:string;
        tmp:char;
begin
        assign(f,'NEXTK.INP');
        reset(f);
        readln(f,k);
        readln(f,n);
        close(f);

        assign(f,'NEXTK.OUT');
        rewrite(f);
        tra:= n;
        v:= 2;
        while d <> k do
        begin
                n:= tra;
                for i:= v to length(n) do
                begin
                        for j:= i+1 to length(n) do
                        begin
                                if n[i] < n[j] then
                                begin
                                        tmp:= n[i];
                                        n[i]:= n[j];
                                        n[j]:= tmp;
                                        inc(d);
                                end;

                                if d = k then
                                begin
                                        writeln(f,n);
                                        break;
                                end;
                        end;
                        if d = k then
                                break;
                end;
                if (d <> k) and (v = 1) then
                        v:= 3;
                if (d <> k) and (v = 2) then
                        dec(v);
                if d = k then
                        break;
        end;
        close(f);
end.
