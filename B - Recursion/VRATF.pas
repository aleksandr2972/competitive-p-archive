//Sun, March 7, 2021
//https://vn.spoj.com/problems/VRATF/

var
        f:text;
        n,k: longint;

        function bo(n,k: longint): longint;
        begin
                if (n <= k) or ((n-k) mod 2 <> 0) then
                        exit(1);
                bo:= bo((n+k) div 2, k) + bo((n-k) div 2,k);
        end;
begin
        assign(f,'bai3.inp');
        reset(f);
        read(f,n);
        read(f,k);
        close(f);

        assign(f,'bai3.out');
        rewrite(f);
        writeln(f,bo(n,k));
        close(f);

end.
