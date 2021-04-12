var
        f:text;
        st,s,max:string;
        i,q,k:integer;
        kt:boolean;
begin
        assign(f,'Number.inp');
        reset(f);
        readln(f,st);
        close(f);

        assign(f,'Number.out');
        rewrite(f);
        for i:= 1 to length(st) do
        begin
                if st[i] in ['0'..'9'] then
                        s:= s + st[i];
                if (st[i] in ['A'..'z']) or (i = length(st)) then
                begin
                        if s <> '' then
                                kt:= true
                        else
                                kt:= false;
                        if (s = max) and kt then
                        begin
                                inc(q);
                                kt:= false;
                        end;

                        if (s <> max) and kt then
                        begin
                                for k:= 1 to length(max) do
                                        if s[k] < max[k] then
                                        begin
                                                kt:= false;
                                                break;
                                        end;
                        end;

                        if kt then
                        begin
                                max:= s;
                                q:= 1;
                        end;
                        s:='';
                end;
        end;
        writeln(f,'Day so lon nhat ',max);
        writeln(f,'So luong ',q);
        close(f);
end.


