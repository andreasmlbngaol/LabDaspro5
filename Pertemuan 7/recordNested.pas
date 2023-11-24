uses crt, SysUtils, StrUtils;

type
    recordName = record
        firstName: String;
        middleName: String;
        lastName: String;
    end;

    recordMahasiswa = record
        name: recordName;
        nim: String[9];
    end;

var
    mahasiswa: recordMahasiswa;
    tempNama: String;
    tempArray: TStringArray;
    i: Integer;
    n: Word;

begin
    ClrScr;
    write('Masukkan NIM: '); readln(mahasiswa.nim);
    write('Masukkan Nama Lengkap: '); readln(tempNama);
    tempArray := SplitString(tempNama, ' ');
    n := length(tempArray);
    mahasiswa.name.firstName := tempArray[0];
    mahasiswa.name.lastName := tempArray[n - 1];
    //untuk middleName
    for i := 1 to n-2 do begin
        mahasiswa.name.middleName += tempArray[i];

        if(i <> n-2) then begin
            mahasiswa.name.middleName += ' ';
        end;
    end;

    ClrScr;
    writeln('NIM: ', mahasiswa.nim);
    writeln('Nama Depan: ', mahasiswa.name.firstName);
    if(mahasiswa.name.middleName <> '') then begin
        writeln('Nama Tengah: ', mahasiswa.name.middleName);
    end;
    writeln('Nama Belakang: ', mahasiswa.name.lastName);
end.