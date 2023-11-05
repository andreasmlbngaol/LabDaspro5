uses crt;
var
    antrean: array[1..10] of String;
    n: Integer;
    i: Integer;

begin
    ClrScr;
    write('Banyak Antrian: '); readln(n);
    for i := 1 to n do begin
        write('Input ', i, ': '); readln(antrean[i]);
    end;

    writeln();
    for i := n downto 1 do begin
        write(antrean[i], ' ');
    end;
end.