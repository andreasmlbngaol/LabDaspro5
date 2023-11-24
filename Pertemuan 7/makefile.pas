uses crt, SysUtils;

var
    f: TextFile;
    fileName: String;

begin
    ClrScr;
    //nama file
    write('Nama File: '); readln(fileName);

    //bekerja dengan file f yang bernama fileName
    Assign(f, fileName);
    //membuat file
    rewrite(f);
    //menulis ke dalam file
    writeln(f, 'Hello');
    // writeln(f, 'Hello', 123, 'Anjay', 'Uyeah');
    //menyimpan dan menutup file
    Close(f);

    //menampikan di terminal
    writeln('File telah dibuat');
end.