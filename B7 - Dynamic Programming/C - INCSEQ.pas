//Apr 12, 2021
//Classic - Longest Increasing Sequence (discrete or continuous)

type
        gay = array[1..100000] of longint;
var
        f: text;
        n,i,k: longint;
        a,l: gay;
begin
        assign(f,'INCSEQ.inp');
        reset(f);
        n:= 0;
        while not eoln(f) do
        begin
                inc(n);
                read(f,a[n]);
        end;
        a[n+1]:= high(longint);
        close(f);

        assign(f,'INCSEQ.out');
        rewrite(f);
        for i:= 1 to n+1 do
                l[i]:= 1;
        for i:= 1 to n+1 do
                for k:= 1 to i-1 do
                        if a[k] <= a [i] then           //Condition even group them together
                                if l[i] < l[k] + 1 then         // Lieu nhom a[i] se tham gia no tot hon cai no dang tham gia?
                                        l[i]:= l[k] + 1;
        writeln(f,l[n+1]-1);
        close(f);
end.