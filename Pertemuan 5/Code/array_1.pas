uses crt; 
var
    arrBilangan: array[0..49] of Integer;
    i : Integer;

begin
    ClrScr;
    arrBilangan[0] := 23;
    arrBilangan[1] := 10;
    for i := 0 to 49 do begin
        if(arrBilangan[i] <> 0) then begin
            writeln(i, '. ', arrBilangan[i]);
        end;
    end;
end.