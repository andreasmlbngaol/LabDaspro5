program gabungString;
uses crt;
var
    nama: String;
    namaDepan: String;

begin
    ClrScr;
    nama := 'Andreas Manatar';
    namaDepan := nama[1] + nama[2] + nama[3] + nama[4] + nama[5] + nama[6] + nama[7]; //Ini kalau mau disimpan ke string
    Writeln(namaDepan);
    Writeln(nama[9..15]); //Ini kalau mau langsung di tampilkan
end.