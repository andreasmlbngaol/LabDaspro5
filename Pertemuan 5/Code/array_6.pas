uses crt, SysUtils, StrUtils;
const
    limit = 50; //batas operasi
    decimal = 2; //batas desimal (digit di belakang koma)
var
    input: String;
    arrayInput: TStringArray; //array dari input yang sudah dipisah
    arrayBil: array[1..limit] of Extended; //aray untuk semua bilangan
    arrayOperator: array[1..limit] of String; //array untuk semua operator
    i: Byte; //variabel perulangan
    sum: Extended = 0; //nilai identitas penjumlahan

begin
    ClrScr;
    //Input
    writeln('Masukkan Operasi (+, -):');
    write('> ');
    readln(input);

    //Check Input
    if(input[Length(input)] <> '=') then begin //Melihat karakter terakhir dari input, jika bukan merupakan '='
        if(input[Length(input)] = ' ') then begin //kalau karakter terakhir adalah spasi (' ') tambahi '='
            input += '=';
        end else begin //selain dari itu (masih angka) tambahi ' ='
            input += ' =';
        end;
    end;
    //mengganti semua '.' menjadi ',' pada variabel input
    input := ReplaceStr(input, '.', ',');
    
    //Memisahkan string dengan delimiter atau pemisah ' '
    arrayInput := SplitString(input, ' ');
    
    //Perulangan sebanyak berapa isi dari array - 1 karna karakter terakhir adalah ' '
    for i := 0 to (Length(arrayInput) - 1) do begin
        if((i MOD 2) = 0) then begin //jika indeks nya genap masukkan ke array bilangan setelah diubah ke float
            arrayBil[(i div 2) + 1] := StrToFloat(arrayInput[i]);
        end else begin //jika indeksnya ganjil masukkan ke array operator
            arrayOperator[(i div 2) + 1] := arrayInput[i];
        end;
    end;

    // Perulangan sampai limit
    for i := 1 to limit do begin
        if(arrayOperator[i] = '') then begin //Jika Operator ke-i kosong maka berhenti
            break;
        end;
        if(i = 1) then begin //untuk operator pertama selalu '+' maka jumlahkan hasil dengan bilangan pertama
            sum += arrayBil[1];
            continue
        end;
        //cek operator di belakang bilangan
        if(arrayOperator[i-1] = '+') then begin //jika '+' maka jumlahkan
            sum += arrayBil[i];
        end else if(arrayOperator[i-1] = '-') then begin //jika '-' maka kurangkan
            sum -= arrayBil[i];
        end else if(arrayOperator[i-1] <> '=') then begin //jika selain '+', '-', atau '=' maka error, hentikan programnya.
            writeln('Syntax Error');
            exit;
        end;
    end;

    //Output
    write('= ');
    //Cek jika merupakan bilangan bulat
    if(sum = round(sum)) then begin //Jika bilangan bulat maka tampilkan 0 di belakang koma
        writeln(sum:0:0);
    end else begin //Jika bilangan desimal maka tampilkan 2 di belakang koma
        writeln(sum:0:decimal);
    end;
end.