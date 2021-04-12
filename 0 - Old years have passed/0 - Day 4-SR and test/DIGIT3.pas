var
        f:text;
        bin,tri,fuck,tmpb:string;
        tmp,i,k,d:integer;


        function conDec(bin:string): longint;
        var
                i,m,tg,x:longint;
        begin
                m:=1;
                for i:= length(bin) downto 1 do
                begin
                        val(bin[i],x);
                        tg:= tg + (x * m);
                        m:= m * 2;
                end;
                conDec:= tg;
        end;

        function conTri(tmp:longint): string;
        var
                x:longint;
                s:string;
                tg:string;
        begin
                while tmp > 0 do
                begin
                        x:= tmp mod 3;
                        str(x,s);
                        tg:= tg + s;
                        tmp:= tmp div 3;
                end;
                conTri:= tg;
        end;


begin
        assign(f,'DIGIT.INP');
        reset(f);
        readln(f,bin);
        readln(f,tri);
        close(f);

        assign(f,'DIGIT.OUT');
        rewrite(f);
        tmpb:= bin;
        for i:= 1 to length(bin) do
        begin
                bin:= tmpb;
                if bin[i] = '0' then
                        bin[i]:= '1'
                else
                        bin[i]:= '0';

                tmp:= conDec(bin);
                fuck:= conTri(tmp);
                if length(tri) = length(fuck) then
                begin
                        d:= 0;
                        for k:= 1 to length(fuck) do
                                if fuck[k] <> tri[k] then
                                        inc(d);
                end;

                if d = 1 then
                begin
                        writeln(f,tmp);
                        break;
                end;
        end;
        close(f);
end.
