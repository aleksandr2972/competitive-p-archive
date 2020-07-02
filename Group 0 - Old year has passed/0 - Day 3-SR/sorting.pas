type
        mang = array [1..10000] of integer;
var
        procedure sorting(var a:mang);
        var
                tmp,i,k:integer;
        begin
                for i:= 1 to n do
                        for k:= i+1 to n do
                                if a[i] < a[k] then
                                begin
                                        tmp:= a[i];
                                        a[i]:= a[k];
                                        a[k]:= tmp;
                                end;
        end

begin