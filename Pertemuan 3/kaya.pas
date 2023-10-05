program kaya;
uses crt;
var
    harta: Integer;

begin
    ClrScr;
    write('Masukkan kekayaan anda dalam juta: '); readln(harta);
    if(harta < 8) then begin
        writeln('sedang');
    end else if(harta < 6) then begin
        writeln('miskin');
    end else begin
        writeln('kaya');
    end;
end.