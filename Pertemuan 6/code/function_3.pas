program tabung;
uses crt;
const pi = 3.1416;

function luasPermukaanTabung(r: Real; t: Real): Real;
begin
    luasPermukaanTabung := 2 * pi * r * (r + t); exit;
end;

function volumeTabung(r: Real; t: Real): Real;
begin
    volumeTabung := pi * r * r * t; exit;
end;

procedure show(besaran: String; nilai: Real; satuan: String);
begin
    writeln(besaran, ' tabung = ', nilai:0:2, ' ', satuan);
end;

var
    d: Real;
    r: Real;
    t: Real;
    luas: Real;
    volume: Real;

begin
    ClrScr;
    write('Masukkan diameter tabung: '); readln(d);
    write('Masukkan tinggi tabung: '); readln(t);
    r := d / 2;

    show('Jari-jari', r, 'cm');
    show('Tinggi', t, 'cm');
    show('Luas permukaan', luasPermukaanTabung(r, t), 'cm^2');
    show('Volume', volumeTabung(r, t), 'cm^3');
end.