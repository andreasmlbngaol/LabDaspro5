uses crt;

function isPrime(n: Integer): Boolean;
var
    i: Integer;

begin
    if(n < 2) then begin
        isPrime := FALSE; exit;
    end;
    for i := 2 to (n div 2) do begin
        if(n mod i = 0) then begin
            isPrime := FALSE; exit;
        end;
    end;
    isPrime := TRUE; exit;
end;

var
    n: Integer;

begin
    ClrScr;
    write('Masukkan bilangan yang ingin di cek: '); readln(n);
    if(isPrime(n)) then begin
        writeln('Prima');
    end else begin
        writeln('Non Prima');
    end;
end.