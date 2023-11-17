uses crt;

function factorial(n: Integer): Integer;
begin
    if(n = 1) then begin
        factorial := 1; exit;
    end;
    factorial := n * factorial(n-1); exit;
end;

begin
    ClrScr;
    writeln(factorial(4));
end.