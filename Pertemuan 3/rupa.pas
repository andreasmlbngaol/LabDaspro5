program rupa;
uses crt;
var
    wajah: String;

begin
    ClrScr;
    write('Anda merasa anda ... -> '); readln(wajah);
    if((wajah = 'tampan') or (wajah = 'cantik')) then begin
        write('Anda mahasiswa Ilkom');
    end;
end.