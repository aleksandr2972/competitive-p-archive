type
        marker = array [1..2009] of boolean;
var
        a:marker;
        l,checked_num,d,tmp,i: integer;
        f:text;
begin
        assign(f,'DOCDAC.inp');
        reset(f);
        readln(f,l);
        close(f);

        assign(f,'DOCDAC.out');
        rewrite(f);
        checked_num:= 0;
        d:= 0;
        fillchar(a,sizeof(a),true);
        while checked_num < 2009 do
        begin
                for i:= 1 to 2009 do
                begin
                        if a[i] = true then
                                inc(d);
                        if d = 612 then
                        begin
                                d:= 0;
                                a[i]:= false;
                                inc(checked_num);
                                if checked_num = 2009 then
                                begin
                                        tmp:= i;
                                        break;
                                end;
                        end;
                end;
        end;
        writeln(f,tmp);
        if l < tmp then
                writeln(f,2009-(tmp-l)+1)
        else
                writeln(f,1+(l-tmp));
        close(f);
end.

