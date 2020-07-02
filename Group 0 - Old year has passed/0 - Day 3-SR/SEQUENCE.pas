var
        x,i,k,n:longint;
        f,g:text;
        a:array [1..82] of integer;
        s,st:string;
        kt:boolean;
begin
        x:= 1;
        a[1]:= 1;
        for i:= 2 to 82 do
        begin
                str(x,s);
                st:='';
                for k:= length(s) downto 1 do
                        st:= st + s[k];
                val(st,x);
                inc(x,2);
                a[i]:= x;
        end;
        {a[0]:= a[81];}

        assign(f,'SEQUENCE.INP');
        assign(g,'SEQUENCE.OUT');
        reset(f);
        rewrite(g);
        while not eof(f) do
        begin
                readln(f,n);
                kt:= true;

                if (n = 1) then
                begin
                        writeln(g,1);
                        kt:= false;
                end
                else
                begin
                        n:=n mod 83;
                        if n=0 then n:=n-2;
                        writeln(g,a[n]);
                end;
        end;
        close(f);
        close(g);
end.

