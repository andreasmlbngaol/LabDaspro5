program segitiga;
uses crt;

function luasSegitiga(alas: Real; tinggi: Real): Real;
begin
    luasSegitiga := alas * tinggi / 2; exit;
end;

procedure show(luas: Real);
begin
    writeln('Luas Segitiga = ', luas:0:2);
end;


var
    alas: Real;
    tinggi: Real;

begin
    ClrScr();
    write('Alas: '); readln(alas);
    write('Tinggi: '); readln(tinggi);

    ClrScr();
    show(luasSegitiga(alas, tinggi));
end.