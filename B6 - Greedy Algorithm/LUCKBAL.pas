//Apr 7, 2021
//https://www.hackerrank.com/challenges/luck-balance/problem
type 
     gay = array [1..10000] of longint; 
var
    i,n,k,sum,tmp1,tmp2,d: longint;
    a:gay;
    
    procedure quickshort(var a: gay; left,right: longint); 
    var
        x,l,r,tmp: longint;
    begin
        x:= a[(left+right) div 2]; 
        l:= left; 
        r:= right; 
        while (l<= r) do 
        begin
            while (a[l] < x) do inc(l);
            while (a[r] > x) do dec(r); 
        if (l <= r ) then 
        begin
            tmp:= a[l]; 
            a[l]:= a[r];
            a[r]:= tmp; 
            inc(l); 
            dec(r);
        end;
        end; 
    if (left < r) then 
        quickshort(a,left,r);
    if (right > l) then
        quickshort(a,l,right); 
    end; 
begin
    readln(n,k); 
    sum:= 0;
    for i:= 1 to n do 
    begin
        readln(tmp1,tmp2); 
        sum:= sum + tmp1;
        if tmp2 = 1 then 
        begin
            inc(d); 
            a[d]:= tmp1; 
        end;
    end; 
    
    quickshort(a,1,d);
    n:= d - k;
    for i:= 1 to n do 
        sum:= sum - 2*a[i];
    writeln(sum);
end.
