program barisanBilangan;
uses crt;
var
    n: Byte; //batas atas bilangan
    jumlah: Integer; //jumlah bilangan (deret)
    banyak: Byte; //banyak bilangan (jumlah elemen)
    i: Integer; //variabel untuk perulangan

begin
    ClrScr;
    write('Batas atas: '); readln(n); //input batas atas
    
    banyak := 0; //nilai identitas penjumlahan untuk penjumlahan
    jumlah := 0; //nilai identitas penjumlahan untuk penjumlahan
    for i := n downto 1 do begin
        //cek bilangan ganjil dan kelipatan 3
        if((i MOD 2 = 1) AND (i MOD 3 = 0)) then begin
            write(i, ' '); //menampilkan barisan bilangan
            banyak += 1; //menambahkan banyak bilangan dengan 1
            jumlah += i; //menjumlahkan bilangan
        end;
    end;
    writeln(); //masuk ke baris baru
    writeln('Banyak: ', banyak); //menampilkan banyak bilangan (banyak elemen);
    writeln('Jumlah: ', jumlah); //menampilkan jumlah bilangan
end.