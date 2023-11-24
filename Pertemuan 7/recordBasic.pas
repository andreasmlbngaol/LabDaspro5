uses crt;

type
    recordBiodata = record
        nama: String;
        nim: String[9];
        umur: Byte;
    end;
    

var
    mahasiswa: recordBiodata;

begin
    ClrScr;
    write('Masukkan Nama: '); readln(mahasiswa.nama);
    write('Masukkan NIM : '); readln(mahasiswa.nim);
    write('Masukkan Umur: '); readln(mahasiswa.umur);

    ClrScr;
    writeln('Nama: ', mahasiswa.nama);
    writeln('NIM : ', mahasiswa.nim);
    writeln('Umur: ', mahasiswa.umur);
end.