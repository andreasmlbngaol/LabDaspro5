uses crt, SysUtils;

procedure showDateTime();
var
    hour, minute, second, milisecond: Word;
begin
    DecodeTime(Time, hour, minute, second, milisecond);
    writeln(hour, ':', minute, ':', second);
end;

procedure clear();
var
    i: Integer;

begin
    ClrScr;
    writeln(DateTimeToStr(Now));
    for i := 1 to 20 do begin
        write('-');
    end;
    writeln();
end;

begin
    clear();
    writeln('Hello World');
end.