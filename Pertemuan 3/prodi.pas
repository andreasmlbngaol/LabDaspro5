program tampan;
uses crt;
var
    prodi: String;

begin
    ClrScr;
    write('Masukkan prodi anda: '); readln(prodi);
    prodi := lowercase(prodi);
    if(prodi = 'ilkom') then begin
        writeln('Kamu tampan atau cantik');
    end else begin
        writeln('Kamu tidak tampan dan cantik');
    end;
end.