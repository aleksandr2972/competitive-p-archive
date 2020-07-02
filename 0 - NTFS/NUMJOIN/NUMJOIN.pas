var
        f:text;
        a:array [1..100] of longint;
        n,i,k,tmp:integer;
        s1,s2:string;
begin
        assign(f,'NUMJOIN.INP');
        reset(f);
        readln(f,n);
        for i:= 1 to n do
                read(f,a[i]);
        close(f);

        assign(f,'NUMJOIN.OUT');
        rewrite(f);
        for i:= 1 to n do
        begin
                for k:= i+1 to n do
                begin
                        str(a[i],s1);
                        str(a[k],s2);
                        if s1[1] < s2[1] then
                        begin
                                tmp:= a[i];
                                a[i]:= a[k];
                                a[k]:= tmp;
                        end;

                        if s1[1] = s2[1] then
                                if a[i] < a[k] then
                                begin
                                        tmp:= a[i];
                                        a[i]:= a[k];
                                        a[k]:= tmp;
                                end;
                end;
        end;
        for i:= 1 to n do
                write(f,a[i]);
        close(f);
end.