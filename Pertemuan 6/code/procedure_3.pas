uses crt;

procedure bintang(banyak: Integer);
var
    i: Integer;

begin
    for i:= 1 to banyak do begin
        write('*');
    end;
    writeln();
end;

//main program
begin
    ClrScr;
    writeln('Judul');
    bintang(10);
    writeln('Isi');
    bintang(20);
end.