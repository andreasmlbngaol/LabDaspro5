program main;
uses crt, sysutils;
var
    nama: String;
    nim: Longint;
    nimString: String;
    kom: Char;

begin
    ClrScr;
    write('Masukkan nama anda: '); readln(nama);
    write('Masukkan 3 digit terakhir NIM: '); readln(nimString);
    nim := StrToInt(nimString);
    if(nim MOD 3 = 0) then begin
        kom := 'C';
    end else if(nim MOD 3 = 1) then begin
        kom := 'A';
    end else begin
        kom := 'B';
    end;
    writeln('-----------------------------------------------------------------------------');
    writeln('Mahasiswa Ilkom bernama ', nama, ' dengan NIM 231401', nimString, ' berada di kom ', kom);
    readln;
end.