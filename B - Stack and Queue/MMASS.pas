type
        gay = array[1..200] of integer;
var
        f:text;
        i,top,s,num: integer;
        c: string;
        a: gay;

        //Initialize
        procedure stackint(var a:gay; top: integer);
        begin
                top:= 0;
        end;

        procedure push(var a:gay;var top: integer; n:integer);
        begin
                inc(top);
                a[top]:= n;
        end;

        function pop(var a:gay; var top: integer): integer;
        begin
                if top = 0 then
                        exit(0)
                else
                begin
                        dec(top);
                        exit(a[top+1]);
                end;
        end;

        function group(var a: gay; var top: integer): integer;
        var
                s: integer;
        begin
                s:= 0;
                while a[top] <> 0 do
                begin
                        s:= s + pop(a,top);
                end;
                exit(s);
        end;


begin
        assign(f,'MMAS.INP');
        reset(f);
        readln(f,c);
        close(f);

        assign(f,'MMAS.out');
        rewrite(f);
        for i:= 1 to length(c) do
        begin
                if (c[i] = 'C') then
                        push(a,top,12);
                if (c[i] = 'H') then
                        push(a,top,1);
                if (c[i] = 'O') then
                        push(a,top,16);
                if (c[i] = '(') then
                        push(a,top,0);
                if (c[i] in ['1'..'9']) then
                begin
                        val(c[i],num);
                        push(a,top,num*pop(a,top));
                end;
                if (c[i] = ')') then
                        push(a,top,group(a,top));
        end;
        s:= 0;
        while top <> 0 do
                s:= s + pop(a,top);
        writeln(f,s);
        close(f);
end.
