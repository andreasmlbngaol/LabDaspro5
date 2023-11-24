uses crt, SysUtils;

var
    f: TextFile;
    fileName: String;

begin
    ClrScr;
    //nama file
    fileName := 'Test.txt';

    //bekerja dengan file f yang bernama fileName
    Assign(f, fileName);
    //membuat file
    append(f);
    //menulis ke dalam file
    writeln(f, 'World');
    //menyimpan dan menutup file
    Close(f);
    writeln('File telah di-append');
end.