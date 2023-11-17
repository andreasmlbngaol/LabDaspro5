uses crt, Math;

procedure fibonacci(n: Integer);
var
    i: Integer;
    bil: Integer;
    fibNext: Integer;
    fibPrev: Integer;

begin
    fibPrev := 0;
    fibNext := 1;
    bil := 0;
    for i := 1 to n do begin
        write(fibNext);
        write(' ');
        bil := fibNext;
        fibNext += fibPrev;
        fibPrev := bil;
    end;
end;

procedure pangkat(n: Integer);
var
    i: Integer;
    bil: Extended;

begin
    for i := 1 to n do begin
        bil := power(2, i-1);
        write(bil:0:0);
        write(' ');
    end;
end;

procedure square(n: Integer);
var
    i: Integer;
    bil: Extended;

begin
    for i := 1 to n do begin
        bil := sqr(i);
        write(bil:0:0);
        write(' ');
    end;
end;

procedure barisMisterius(n: Integer);
var
    i: Integer;
    bil: Integer;

begin
    for i := 1 to n do begin
        bil := i * (i + 1);
        write(bil);
        write(' ');
    end;
end;

begin
    ClrScr;
    fibonacci(10);
    writeln();
    pangkat(10);
    writeln();
    square(10);
    writeln();
    barisMisterius(10);
end.