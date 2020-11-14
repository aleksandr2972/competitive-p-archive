type
    gay = array [1..100] of integer;
var
        a: gay;
        i,n,x: integer;
// Input
procedure input(var a:gay;var n: integer; var x:integer);
var i: integer;
begin
        writeln('Nhap n vo: ');
        readln(n);
        writeln('Nhap x vo: ');
        readln(x);
        writeln('Nhap mang a: ');
        for i:=1 to n do
                readln(a[i]);
end;

// minDelta
procedure minDelta(a: gay; n,x:integer);
var min,i,num: integer;
begin
        min:= 32767;
        for i:= 1 to n do
                if abs(x-a[i]) < min then
                begin
                        min:= abs(x-a[i]);
                        num:= a[i];
                end;
        writeln('Phan tu co gia tri gan x nhat: ',num);
end;

//maxSmaller
procedure maxSmaller(a: gay; n,x:integer);
var max,i: integer;
begin
        max:= 0;
        for i:= 1 to n do
                if (a[i] > max) and (a[i] < x) then
                        max:= a[i];
        writeln('Phan tu lon nhat trong cac so phan tu nho hon x: ', max);
end;

//nearFar
procedure nearFar(a: gay; n,x:integer);
var max,i,p: integer;
begin
        max:= 0;
        for i:= 1 to n-1 do
                if (a[i+1] - a[i]) > max then
                begin
                        p:= i;
                        max:= (a[i+1] - a[i]);
                end;
        writeln('2 phan tu ke nhau co khoang cach lon nhat la: ',a[p], ' ', a[p+1]);
end;

//repeatMax
procedure repeatMax(a: gay; n,x: integer);
var max,count,i,k,num: integer;
begin
        max:= 0;
        for i:= 1 to n do
        begin
                count:= 0;
                for k:= i+1 to n do
                        if a[i] = a[k] then
                                inc(count);
                if count > max then
                begin
                        max:= count;
                        num:= a[i];
                end;
        end;
        writeln('Tim phan tu co so lan lap lai nhieu nhat: ', num);
end;
begin
        input(a,n,x);
        minDelta(a,n,x);
        maxSmaller(a,n,x);
        nearFar(a,n,x);
        repeatMax(a,n,x);
end.