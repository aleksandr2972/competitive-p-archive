type
        nani = array [1..100,1..100] of integer;
var
        a:nani;
        n,m,i,k,j,h,l,r,v,max,tg,lim1,lim2,lim3,lim4:integer;
        f:text;
begin
        assign(f,'matran.inp');
        reset(f);
        readln(f,n,m);
        for i:= 1 to n do
        begin
                for k:= 1 to m do
                        read(f,a[i,k]);
                readln(f);
        end;

        assign(f,'matran.out');
        rewrite(f);

        //Cau a
        {for i:= 1 to n do
                for k:= 1 to m do
                        for h:= n downto i do
                                for j:= m downto k do
                                begin
                                        tg:= 0;
                                        for l:= i to h do
                                                for r:= k to j do
                                                        inc(tg,a[l,r]);
                                        if tg > max then
                                        begin
                                                max:= tg;
                                                lim1:= i;
                                                lim2:= k;
                                                lim3:= h;
                                                lim4:= j;
                                        end;
                                end;
        for i:= lim1 to lim3 do
        begin
                for k:= lim2 to lim4 do
                        write(f,a[i,k], ' ');
                writeln(f);
        end;
        writeln(f);
        max:= 0;}

        //Cau b
        for i:= 1 to n do
                for k:= 1 to m do
                        for h:= n downto i do
                                for j:= m downto k do
                                begin
                                        tg:= 0;
                                        for l:= i to h do
                                                for r:= k to j do
                                                        inc(tg,a[l,r]);
                                        for v:= 2 to tg do
                                                if tg mod v = 0 then
                                                        break;
                                        if (v = tg) and (tg > max) then
                                        begin
                                                max:= tg;
                                                lim1:= i;
                                                lim2:= k;
                                                lim3:= h;
                                                lim4:= j;
                                        end;
                                end;

        for i:= lim1 to lim3 do
        begin
                for k:= lim2 to lim4 do
                        write(f,a[i,k], ' ');
                writeln(f);
        end;
        writeln(f);
        max:= 0;

        //Cau c
       {for i:= 1 to n do
       begin
                for k:= 1 to m do
                        for h:= n downto 1 do
                                for j:= m downto 1 do
                                begin
                                end;
       end;

       for i:= lim1 to lim3 do
       begin
                for k:= lim2 to lim4 do
                        write(f,a[i,k],' ');
                writeln(f);
       end;}
       close(f);
end.