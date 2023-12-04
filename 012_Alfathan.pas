program KHS;
uses crt, sysutils;

type
  MataKuliah = record
    Nama: string;
    SKS: integer;
  end;

  Mahasiswa = record
    Nama: string;
    NIM: string;
    HurufNilai: array of string;
    TotalNilai: real;
    IndeksPrestasi: real;
  end;

var
  matkul: array of MataKuliah;

procedure InputMataKuliah(var matkul: MataKuliaH);
begin
  write('Nama Matkul: ');
  readln(matkul.Nama);
  write('SKS Matkul : ');
  readln(matkul.SKS);
end;

procedure InputMahasiswa(var mhs: Mahasiswa; banyakMatkul: integer);
begin
  clrscr;
  Writeln('Mahasiswa');
  writeln('===================');
  writeln;
  write('Nama : ');
  readln(mhs.Nama);
  write('NIM  : ');
  readln(mhs.NIM);
  writeln;
end;

function KonversiNilai(huruf: string): real;
begin
  case huruf of
    'A': KonversiNilai := 4.0;
    'B+': KonversiNilai := 3.5;
    'B': KonversiNilai := 3.0;
    'C+': KonversiNilai := 2.5;
    'C': KonversiNilai := 2.0;
    'D': KonversiNilai := 1.0;
    'E': KonversiNilai := 0.0;
  end;
end;

function TotalSKS(matkul: array of MataKuliah; banyakMatkul: integer): integer;
var
  hasil, i: integer;
begin
  hasil := 0;

  for i := 0 to banyakMatkul - 1 do
    hasil := hasil + matkul[i].SKS;

  TotalSKS := hasil;
end;

procedure HitungIP(var mhs: Mahasiswa; banyakMatkul: integer);
var
  i: integer;
begin
  mhs.TotalNilai := 0;
  SetLength(mhs.HurufNilai, banyakMatkul);

  for i := 0 to banyakMatkul - 1 do
    begin
      write('Nilai Matkul ', matkul[i].Nama, ': ');
      readln(mhs.HurufNilai[i]);
      mhs.TotalNilai := mhs.TotalNilai + (KonversiNilai(mhs.HurufNilai[i]) * matkul[i].SKS);
    end;

  mhs.IndeksPrestasi := 0;
  if TotalSKS(matkul, banyakMatkul) <> 0 then
    mhs.IndeksPrestasi := mhs.TotalNilai / TotalSKS(matkul, banyakMatkul);
end;

procedure SimpanKeFile(var mhs: Mahasiswa; matkul: array of MataKuliah; banyakMatkul: integer; namaFile: string);
var
  i,y,maxNamaMatkul, maxNilaiHuruf: integer;
  f: TextFile;
begin
  Assign(f, namaFile);
  Rewrite(f);

  writeln(f, 'Kartu Hasil Studi');
  writeln(f, '=================');
  writeln(f);
  writeln(f, 'Nama   : ', mhs.Nama);
  writeln(f, 'NIM    : ', mhs.NIM);
  writeln(f);
  writeln(f, '|==========================================|');
  writeln(f, '|No.|Matkul                          |Nilai|');
  writeln(f, '|==========================================|');

  for i:= 0 to banyakMatkul-1 do
    begin
      maxNamaMatkul := 32 - Length(matkul[i].Nama);
  
      maxNilaiHuruf := 5 - Length(mhs.HurufNilai[i]);
  
      write(f, '|', i + 1, '. |', matkul[i].Nama);
      for y:= 1 to maxNamaMatkul do
         write(f, ' ');

      write(f, '|',mhs.HurufNilai[i]);
      for y:= 1 to maxNilaiHuruf do
        begin
          write(f, ' ');
          if y = maxNilaiHuruf then
            writeln(f,'|');
        end;
    end;

  writeln(f, '|==========================================|');
  writeln(f);
  writeln(f, 'Total SKS  : ', TotalSKS(matkul, banyakMatkul));
  writeln(f, 'IP Semester: ', mhs.IndeksPrestasi:0:2);

  Close(f);

end;

var
  banyakMatkul, i: integer;
  mhs: Mahasiswa;
  namaFile: string;
begin
  clrscr;
  write('Banyak Matkul: ');
  readln(banyakMatkul);

  SetLength(matkul, banyakMatkul);
  for i := 0 to banyakMatkul - 1 do
  begin
    clrscr;
    writeln('Matkul [', i + 1 , ']');
    writeln('========================');
    writeln;
    InputMataKuliah(matkul[i]);
  end;

  InputMahasiswa(mhs, banyakMatkul);

  HitungIP(mhs, banyakMatkul);

  namaFile := 'KHS_' + mhs.NIM + '_' + mhs.Nama;
  SimpanKeFile(mhs, matkul, banyakMatkul, namaFile);

  writeln('Data Mahasiswa berhasil disimpan di file ', namaFile);
end.