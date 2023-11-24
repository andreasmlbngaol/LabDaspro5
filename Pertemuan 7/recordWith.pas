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
    tempNama: String; //nama sementara
    tempArray: TStringArray; //array sementara
    i: Integer; //variabel perulangan
    n: Integer; //jumlah kata dalam nama {panjang array}
    // nim: Integer;

begin
    ClrScr;
    with mahasiswa do begin
        write('Masukkan NIM: '); readln(nim);
        write('Masukkan Nama Lengkap: '); readln(tempNama);
        tempArray := SplitString(tempNama, ' ');
        n := length(tempArray);
        name.firstName := tempArray[0];
        name.lastName := tempArray[n - 1];
        for i := 1 to n-2 do begin
            name.middleName += tempArray[i];
            if(i <> n-2) then begin
                name.middleName += ' ';
            end;
        end;

        ClrScr;
        writeln('NIM: ', nim);
        with name do begin
            writeln('Nama Depan: ', firstName);
            if(middleName <> '') then begin
                writeln('Nama Tengah: ', middleName);
            end;
            writeln('Nama Belakang: ', lastName);
        end;
    end;
end.