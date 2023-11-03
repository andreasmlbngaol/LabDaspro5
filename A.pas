program tabung;
uses crt; //unit crt untuk ClrScr
var
    //Extended itu tipe data untuk bilangan berkoma, bisa juga pakai Real atau Double
    diameter, jari, volume, luasPermukaan: Extended;
    tinggi: Integer;
const
    pi = 3.1416; //Nilai pi di soal

begin
    ClrScr;
    write('Diameter: '); readln(diameter); //input baris pertama (diameter)
    jari := diameter / 2;
    write('Tinggi: '); readln(tinggi); //input baris kedua (tinggi)
    
    //volume tabung = pi x r^2 x t
    volume := pi * sqr(jari) * tinggi;
    //luas permukaan tabung = 2 x pi x r x (r + t)
    luasPermukaan := 2 * pi * jari * (jari + tinggi);
    
    writeln('Volume: ', volume:0:4, ' cm^3'); //output baris pertama (volume)
    writeln('Luas Permukaan: ', luasPermukaan:0:4, ' cm^2') //output baris kedua (luas permukaan)
end.
    