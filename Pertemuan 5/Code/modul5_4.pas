uses crt;
type
    arr = array[1..5] of Extended;
var
    n: Integer; //banyak mahasiswa
    i: Integer;
    tugas: arr;
    kuis: arr;
    uts: arr;
    uas: arr;
    average: arr;

begin
    ClrScr;
    //Input
    write('Jumlah Mahasiswa: '); readln(n);
    for i := 1 to n do begin
        writeln('Mahasiswa[', i, ']: ');
        write('Tugas: '); readln(tugas[i]);
        write('Kuis : '); readln(kuis[i]);
        write('UTS  : '); readln(uts[i]);
        write('UAS  : '); readln(uas[i]);
        writeln();
    end;

    //Proses dan Output
    ClrScr;
    for i := 1 to n do begin
        average[i] := (tugas[i] + kuis[i] + uts[i] + uas[i]) / 4;
        writeln('Mahasiswa[', i, ']: ');
        writeln('Tugas : ', tugas[i]:0:2);
        writeln('Kuis  : ', kuis[i]:0:2);
        writeln('UTS   : ', uts[i]:0:2);
        writeln('UAS   : ', uas[i]:0:2);
        writeln('Rata  : ', average[i]:0:2);
        write('Status: ');
        if(average[i] >= 70) then begin
            writeln('LULUS');
        end else begin
            writeln('TIDAK LULUS');
        end;
        writeln();
    end;
end.