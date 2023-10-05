program hari;
uses crt;
var
    i: Integer;

begin
    ClrScr;
    write('Masukkan nomor hari (1..7): '); readln(i);
    case (i) of
        1 : writeln('Hari Minggu');
        2 : writeln('Hari senin');
        3 : writeln('Hari Selasa');
        4 : writeln('Hari Rabu');
        5 : writeln('Hari Kamis');
        6 : writeln('Hari Jumat');
        7 : writeln('Hari Sabtu');
        else begin
            writeln('Error');
        end;
    end;
end.