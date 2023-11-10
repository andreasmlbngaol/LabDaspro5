uses crt; 
var
    arrBilangan: array[0..2] of Integer = (4, 5, 6);
    i : Integer;

begin
    ClrScr;
    // arrBilangan[0] := 23;
    // arrBilangan[1] := 10;
    for i := 0 to 2 do begin
        if(arrBilangan[i] <> 0) then begin
            writeln(i, '. ', arrBilangan[i]);
        end;
    end;
end.