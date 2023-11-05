uses crt;
var
    n: Integer;
    uas: array[1..10] of Real;
    i, j: Integer;
    temp: Real;

begin
    ClrScr;
    //Input
    write('Banyak Mahasiswa: '); readln(n);
    for i := 1 to n do begin
        write('Nilai Mahasiswa-', i, ': '); readln(uas[i]);
    end;

    //Bubble Sort
    for i := 1 to n do begin
        for j := i+1 to n do begin
            if(uas[i] > uas[j]) then begin
                temp := uas[i];
                uas[i] := uas[j];
                uas[j] := temp;
            end;
        end;
    end;

    //Output
    for i := 1 to n do begin
        if(round(uas[i]) <> uas[i]) then begin
            write(uas[i]:0:2);
        end else begin
            write(round(uas[i]));
        end;
        if (i <> n) then begin
            write(', ');
        end;
    end;
end.