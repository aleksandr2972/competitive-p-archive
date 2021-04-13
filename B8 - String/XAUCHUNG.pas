//Apr 13, 2021
//Cho s1 va s2, tim xau chung lien tuc lon nhat cua s1 va s2.
var
        s1,s2,s3: string;
        f:text;
        i,k,max:shortint;
begin
        assign(f,'XAUCHUNG.inp');
        reset(f);
        readln(f,s1);
        readln(f,s2);
        close(f);

        assign(f,'XAUCHUNG.out');
        rewrite(f);
        for i:= 1 to length(s2) do
        begin
                s3:= '';
                for k:= i to length(s2) do
                begin
                        s3:= s3 + s2[k];
                        if (pos(s3,s1) > 0) and ((k-i+1) > max) then
                                max:= k-i+1;
                end;
        end;
        writeln(f,max);
        close(f);
end.

