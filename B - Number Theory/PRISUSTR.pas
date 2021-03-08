//Mon, Mar 8, 2021
//https://www.spoj.com/PTIT/problems/PRISUSTR/
type 
    sieve = array [1..100000] of boolean;
    nono = array [1..10000] of string; 
    gay = array [1..255] of widestring;
var
    s: sieve;
    prime: nono;
    c,i: integer;
    input: gay;
    
    procedure eratosthenes(var s: sieve; var  prime: nono; var c: integer);
    var
        i,p:longint;
    begin
        fillchar(s,sizeof(s),true);
        p:= 2;
        while (p*p <= 100000) do
        begin
            if s[p] = true then 
            begin
                i:= p*p;
                while(i <= 100000) do
                begin
                    s[i]:= false;
                    i:= i + p;
                end;
            end;
            inc(p);
        end;
        
        c:= 1;
        for i:= 1 to 100000 do 
        begin
            if s[i] = true then
            begin
                str(i,prime[c]);
                inc(c);
            end;
        end;
    end;
begin  
    i:= 0; 
    while (input[i] <> '0') do 
    begin
        inc(i);
        readln(input[i]);
    end;
    
    c:= 0;
    eratosthenes(s,prime,c);
end.
