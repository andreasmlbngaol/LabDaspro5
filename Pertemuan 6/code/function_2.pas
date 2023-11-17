uses crt;

function kuadrat(bil: Integer): LongInt;
begin
    kuadrat := sqr(bil); exit;
end;

var
    input: Integer;
    hasil: LongInt;

begin
    ClrScr;
    write('Masukkan bilangan bulat: '); readln(input);
    hasil := kuadrat(input);
    writeln(hasil);
end.