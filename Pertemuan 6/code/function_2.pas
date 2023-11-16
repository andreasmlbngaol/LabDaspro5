uses crt;

function kuadrat(bil: Integer): LongInt;
begin
    kuadrat := bil * bil; exit;
end;

var
    input: Integer;

begin
    ClrScr;
    write('Masukkan bilangan bulat: '); readln(input);
    writeln(kuadrat(input));
end.