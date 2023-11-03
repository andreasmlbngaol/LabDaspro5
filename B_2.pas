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
    
    i := n; //nilai awal perulangan while
    while (i >= 1) do begin
        //mengecek bilangan ganjil dan kelipatan 3
        if ((i MOD 2 = 1) AND (i MOD 3 = 0)) then begin
            write(i, ' '); //menampilkan barisan bilangan
            banyak += 1; //banyak bilangan di tambah 1
            jumlah += i; //menambahkan jumlah bilangan
        end;
        i -= 1; //mengurangi nilai i untuk perulangan selanjutnya
    end;
    writeln(); //masuk ke baris baru
    writeln('Banyak: ', banyak); //menampilkan banyak bilangan (banyak elemen);
    writeln('Jumlah: ', jumlah); //menampilkan jumlah bilangan
end.