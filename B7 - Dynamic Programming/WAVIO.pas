// April 12, 2021
// Day so Wavio
var
        n,max,i,k,pivot: integer;
        a,l1,l2: array [1..10000] of integer;
        f: text;
begin
        assign(f,'WAVIO.inp');
        reset(f);
        readln(f,n);
        for i:= 1 to n do
                read(f,a[i]);
        close(f);

        assign(f,'WAVIO.out');
        rewrite(f);
        for i:= 1 to n do
        begin
                l1[i]:= 1;
                l2[i]:= 1;
        end;

        for i:= 1 to n do
                for k:= 1 to i-1 do
                        if a[i] > a[k] then
                                if l1[i] < (l1[k] + 1) then
                                        l1[i]:= l1[k] + 1;
        for i:= n downto 1 do
                for k:= n downto i+1 do
                        if a[i] > a[k] then
                                if l2[i] < (l2[k] + 1) then
                                        l2[i]:= l2[k] + 1;
        max:= 0;
        for i:= 1 to n do
                if (l1[i] + l2[i] > max) then
                begin
                        max:= l1[i] + l2[i];
                        pivot:= i;
                end;
        writeln(f,pivot);
        close(f);
end.
