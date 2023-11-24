uses crt, SysUtils, DateUtils, math;

type
    recordMahasiswa = record
        name: String;
        nim: String[9];
        birthday: TDateTime;
        age: Byte;
    end;

var
    mahasiswa: recordMahasiswa;
    day, month, year: Word;

begin
    ClrScr;
    write('Name: '); readln(mahasiswa.name);
    write('NIM: '); readln(mahasiswa.nim);
    write('Birthday Date (day): '); readln(day);
    write('Birthday Date (month): '); readln(month);
    write('Birthday Date (year): '); readln(year);
    mahasiswa.birthday := EncodeDate(year, month, day);
    mahasiswa.age := Floor(YearSpan(Date(), mahasiswa.birthday));

    ClrScr;
    writeln('Name       : ', mahasiswa.name);
    writeln('NIM        : ', mahasiswa.nim);
    writeln('Birthday   : ', DateToStr(mahasiswa.birthday));
    writeln('Age        : ', mahasiswa.age, ' years');
end.