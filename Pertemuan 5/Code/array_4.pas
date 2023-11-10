uses crt;
var
    matriks: array[1..10, 1..10, 1..10] of Real; 
    n, baris, kolom: Integer; //banyak matriks, banyak baris, banyak kolom
    i, j, k: Integer; //variabel untuk perulangan

begin
    ClrScr;
    write('Banyak Matriks: '); readln(n); //batas Matriks
    write('Banyak Baris  : '); readln(baris); //baris matriks
    write('Banyak Kolom  : '); readln(kolom); //baris kolom

    //Input
    for i := 1 to n do begin //ulang sampai banyaknya matriks
        for j := 1 to baris do begin //Ulang sampai banyak baris
            for k := 1 to kolom do begin //Ulang sampai banyak kolom
                write('Matriks_', i, '[', j, '][', k, ']: '); readln(matriks[i][j][k]); //Terima input untuk setiap elemen
            end;
        end;
        writeln();
    end;

    //Output
    ClrScr;
    for i := 1 to n do begin
        writeln('Matriks_', i, ': ');
        for j := 1 to baris do begin
            write('|'); //Garis batas kiri
            for k := 1 to kolom do begin
                write(matriks[i][j][k]:5:0); //2 angka di depan koma, dan 0 angka di belakang koma
            end;
            write('|'); //Garis batas kanan
            writeln();
        end;
        writeln();
    end;
end.