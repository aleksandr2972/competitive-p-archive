var
        f:text;
        n,d:integer;
begin
        assign(f,'NTFS.INP');
        reset(f);
        readln(f,n);
        close(f);

        assign(f,'NTFS.OUT');
        rewrite(f);
        if (n mod 4096 > 0) then
                inc(d);
        d:= d + (n div 4097);
        d:= d * 4;
        writeln(f,d);
        close(f);
end.