// This following algorithm is my first attempt at greedy algorithm.
// It determines what one should carry in a bag with a maximum carry weight based on item's value.
// Input: Maximum carry weight, item's name, value and weight.
// Output: List of item.


type
item = record
        name: string;
        val: integer;
        weigth: integer;
end;

var
        a,b: array [1..1000] of item;
        r: item;
        k,i,w,max,n: integer;
        f: text;

begin
        // Read the fucking list of items
        assign(f,'sapdo.int');
        reset(f);
        readln(max);
        n:= 0;
        while not eof(f) do
        begin
                inc(n);
                read(a[n].name);
                read(a[n].val);
                readln(a[n].weigth);
        end;
        close(f);


        assign(f,'sapdo.out');
        rewrite(f);

        // Sorting thorugh the fucking shits
        for i:= 1 to n do
                for k:= 1 to n do
                        if a[i].val < a[k].val then
                        begin
                                r:= a[i];
                                a[i]:= a[k];
                                a[k]:= r;
                        end;

        // Adding things into the bag
        w:= 0; // The weight carried
        for i:= 1 to n do
        begin
                if ((w + a[i].weigth) < max) or ((w + a[i].weigth) = max) then
                begin
                        writeln(f,a[i].name);
                        w:= w + a[i].weigth;
                end;
                if (w = max) then
                        break;
        end;
        close(f);
end.









