uses crt, SysUtils;
var
    bilanganStr: array[0..100] of String;
    bilangan: array[0..100] of Integer;
    i: Integer;
    jumlah: LongInt;

begin
    ClrScr;
    jumlah := 0;
    i := 0;
    writeln('Ketik "end" untuk menyelesaikan input!');
    while (true) do begin
        write('Input bilangan[', i, ']: '); readln(bilanganStr[i]);
        if(lowercase(bilanganStr[i]) = 'end') then begin
            break;
        end;
        bilangan[i] := StrToInt(bilanganStr[i]);
        jumlah += bilangan[i];
        i += 1;
    end;

    ClrScr;
    for i := 0 to 100 do begin
        if(bilangan[i] = 0) then begin
            writeln();
            write('= ', jumlah);
            break;
        end;
        if(i <> 0) then begin
            write(' + ');
        end;
        write(bilangan[i]);
    end;
end.