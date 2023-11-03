program heroKokTerbang;
uses crt; //unit untuk ClrScr
var
    banyakKabel: Byte; //banyak kabel yang digunakan
    energiKabel: Extended; //energi yang dibutuhkan untuk mengeluarkan 1 kabel
    banyakMusuh: Byte; //banyak musuh yang terkena serangan
    buffStr: String; //variabel untuk menerima input dapat buff atau tidak
    buff: Boolean; //tipe boolean aja biar kepake :v
    energiKeluar: Extended; //energi yang dikeluarkan
    energiPulih: Integer; //energi yang dipulihkan
    energiTotal: Extended; //energi total

begin
    ClrScr;
    write('Banyak kabel: '); readln(banyakKabel); //input banyak kabel
    write('Energi 1 kabel: '); readln(energiKabel); //input energi 1 kabel
    write('Musuh terserang: '); readln(banyakMusuh); //input musuh terkena serangan
    write('Buff (TRUE/FALSE): '); readln(buffStr); //input dapat buff atau tidak
    //biar ada penggunaan boolean nya aja
    if(UpCase(buffStr) = 'TRUE') then begin
        buff := true;
    end else begin
        buff := false;
    end;
    
    //energi yang keluar = energi untuk kabel + energi untuk nyerang semua musuh
    energiKeluar := (banyakKabel * energiKabel) + (banyakMusuh * 15);
    if(buff) then begin
        energiKeluar /= 2; //kalau dapat buff energi yang keluar dibagi 2
    end;
    //energi yang pulih = energi yang dipulihkan x musuh terkena serangan
    energiPulih := (banyakMusuh * 8);
    //energi total = energi yang dikeluarkan - energi yang dipulihkan
    energiTotal := energiKeluar - energiPulih;
    writeln('Total Energi: ', energiTotal:0:2); //output energi total
end.