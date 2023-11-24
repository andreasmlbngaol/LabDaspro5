uses crt;

type
    recordBiodata = record
        nama: String;
        nim: String[9];
        umur: Byte;
    end;

var
    mahasiswa: array[1..2] of recordBiodata;

begin
    ClrScr;
    write('Masukkan Nama: '); readln(mahasiswa[1].nama);
    write('Masukkan NIM: '); readln(mahasiswa[1].nim);
    write('Masukkan Umur: '); readln(mahasiswa[1].umur);

    mahasiswa[1] := mahasiswa[2];
    
    ClrScr;
    writeln('Nama: ', mahasiswa[2].nama);
    writeln('NIM : ', mahasiswa[2].nim);
    writeln('Umur: ', mahasiswa[2].umur);
end.