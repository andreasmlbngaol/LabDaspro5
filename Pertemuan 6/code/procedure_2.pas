uses crt;

procedure bintang();
var
    i: Integer;

begin
    for i := 1 to 20 do begin
        write('*');
    end;
    writeln();
end;

// main program
begin
    ClrScr;
    writeln('Judul');
    bintang();
    writeln('Isi');
    bintang();
end.