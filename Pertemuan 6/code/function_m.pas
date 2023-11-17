program persegiPanjang;
uses crt;

function area(length: Integer; width: Integer): Integer;
begin
    area := length * width; exit;
    writeln('Hello');
end;

procedure show(area: Integer); begin
    writeln('Luas = ', area);
end;

procedure clear(); begin
    ClrScr;
end;

var
    panjang: Integer;
    lebar: Integer;
    luas: Integer;

{main program}
begin
    clear();
    panjang := 4;
    lebar := 5;
    luas := area(panjang, lebar);
    show(luas);
end.