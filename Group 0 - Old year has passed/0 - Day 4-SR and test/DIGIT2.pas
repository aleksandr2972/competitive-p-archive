var
        b,t:array [1..3] of char;
        f:text;
        bin,tri,tmp1,tmp2:string;
        i,k,j,l,v,r,m,re1,re2,x:longint;
        kt:boolean;
begin
        assign(f,'DIGIT.INP');
        reset(f);
        readln(f,bin);
        readln(f,tri);
        close(f);

        assign(f,'DIGIT.OUT');
        rewrite(f);
        b[1]:= '0';
        t[1]:= '0';
        b[2]:= '1';
        t[2]:= '1';
        t[3]:= '2';
        tmp1:= tri;
        tmp2:= bin;
        for i:= 1 to length(tri) do
        begin
                kt:= false;
                tri:= tmp1;
                for k:= 1 to 3 do
                begin
                        tri[i]:= t[k];
                        m:= 1;
                        re1:= 0;

                        for j:= length(tri) downto 1 do
                        begin
                                val(tri[j],x);
                                re1:= re1 + (x*m);
                                m:= m * 3;
                        end;

                        if tri <> tmp1 then
                                for l:=  1 to length(bin) do
                                begin
                                        bin:= tmp2;
                                        for v:= 1 to 2 do
                                        begin
                                                bin[l]:= b[v];
                                                m:= 1;
                                                re2:= 0;

                                        if bin <> tmp2 then
                                        for r:= length(bin) downto 1 do
                                        begin
                                                val(bin[r],x);
                                                re2:= re2 + (x*m);
                                                m:= m*2;
                                        end;

                                        if re1 = re2 then
                                        begin
                                                kt:= true;
                                                break;
                                        end;

                                end;

                                if kt then
                                        break;
                        end;

                if kt then
                        break;
                end;

                if kt then
                        break;
        end;
        writeln(f,re1);
        close(f);
end.

