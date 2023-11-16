uses crt;

function pi(): Real;
begin
    pi := 3.1416; exit;
end;

var
    hasil: Real;
    bil1: Real;
    bil2: Real;

begin
    ClrScr;
    bil1 := 2.22;
    bil2 := pi();
    hasil := bil1 + bil2;
    writeln(hasil:0:4);
end.