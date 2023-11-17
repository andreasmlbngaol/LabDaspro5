uses crt;

function average(arrayBil: array of Integer; n: Integer): Real;
var
    i: Integer;
    jumlah: Integer = 0;

begin
    for i := 1 to n do begin
        jumlah += arrayBil[i];
        writeln(arrayBil[i]);
    end;
    writeln(jumlah);
    average := jumlah / n; exit;
end;

var
    n: Integer;
    i: Integer;
    arrayBil: array[0..50] of Integer;

begin
    ClrScr;
    write('Banyak data: '); readln(n);
    for i := 1 to n do begin
        write('Bilangan [', i, ']: '); readln(arrayBil[i]);
    end;
    writeln(average(arrayBil, n):0:2);
end.