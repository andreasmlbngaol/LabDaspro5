uses crt; 
var
    arrBilangan: array['a'..'z'] of Integer;
    i : Char;

begin
    ClrScr;
    arrBilangan['a'] := 23;
    arrBilangan['b'] := 10;
    for i := 'a' to 'z' do begin
        if(arrBilangan[i] = 0) then begin
            writeln(i, '. ', arrBilangan[i]);
        end;
    end;
end.