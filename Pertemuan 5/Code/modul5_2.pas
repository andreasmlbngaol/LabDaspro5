uses crt;
var
    matriks1: array[1..5, 1..5] of Integer;
    matriks2: array[1..5, 1..5] of Integer;
    hasil: array[1..5, 1..5] of Real;
    baris: array[1..2] of Integer;
    kolom: array[1..2] of Integer;
    i, j: Integer;

begin
    ClrScr;
    for i := 1 to 2 do begin
        write('Jumlah Baris untuk Matriks_', i, ': '); readln(baris[i]);
        write('Jumlah Kolom untuk Matriks_', i, ': '); readln(kolom[i]);
    end;

    if((baris[1] <> baris[2]) OR (kolom[1] <> kolom[2])) then begin
        writeln('Tidak dapat dijumlahkan');
        exit;
    end;

    //Input Matriks
    writeln('Matriks 1:');
    for i := 1 to baris[1] do begin
        for j := 1 to kolom[1] do begin
            write('[', i, '][', j, ']: '); readln(matriks1[i][j]);
        end;
    end;
    writeln();
    writeln('Matriks 2:');
    for i := 1 to baris[1] do begin
        for j := 1 to kolom[1] do begin
            write('[', i, '][', j, ']: '); readln(matriks2[i][j]);
        end;
    end;

    writeln();
    //Proses dan Output
    writeln('Hasil: ');
    for i := 1 to baris[1] do begin
        write('|');
        for j := 1 to kolom[1] do begin
            hasil[i][j] := matriks1[i][j] + matriks2[i][j];
            write(hasil[i][j]:5:0);
        end;
        write('|');
        writeln();
    end;
end.