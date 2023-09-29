# Program Identifikasi NIM Mahasiswa USU

Contoh NIM Mahasiswa USU:
221401067


NIM tersebut dapat dibedah dan dipisah menjadi:

22 14 01 067


Hasil Identifikasi NIM:
1. Digit 1 dan 2 adalah stambuk; (22)
2. Digit 3 dan 4 adalah kode fakultas; (14)
3. Digit 5 dan 6 adalah kode prodi; (01)
4. Digit 7, 8, dan 9 adalah nomor urut. (067)

Nomor urut dapat digunakan untuk menentukan kelas dan jalurnya. Berikut detailnya:
1. Jika nomor urut dibagi 3 sisa 1 maka dia kelas A, sisa 2 maka dia kelas B, sisa 0 maka dia kelas C;

   Clue:

   `if(nomorUrut mod 3 = 1) then
     kelas := 'A';`
2. Jika nomor urut lebih kecil dari 36 maka dia jalur SNBP, lebih kecil dari 71 maka dia jalur SNBT, sisanya jalur SMM;

   Clue:

   `if(nomorUrut <= 35) then
     jalur := 'SNBP';`

## Tugas
**Buat Programnya! :v**

| Contoh Input |
|:------|
|Nama : `Chyntia Claudia`|
|NIM: `231401006`|

| Contoh Output |
|:------|
|Nama : `Chyntia Claudia`|
|NIM: `231401006`|
|Fakultas: `Ilmu Komputer dan Teknologi Informasi`|
|Prodi: `Ilmu Komputer`|
|Jalur: `SNBP`|
|Kelas: `C`|

Untuk detail tiap Kode Fakultas dan Kode Prodi pada link berikut:
[Klik aja ini :v](https://docs.google.com/spreadsheets/d/1s7yNQjytmaS7Y9XYd_ASlU8oOHj4-kO9SrOfwDJXjLo/edit?usp=sharing)

### File yang dikumpulkan:
1. Source Code Program
2. Screenshot Output dengan nama dan nim kamu sendiri

### Penamaan File:
1. tugas_[Nama Panggilan]_[3 digit terakhir NIM].pas untuk Source Code
2. tugas_[Nama Panggilan]_[3 digit terakhir NIM].jpg untuk Screenshot

## More Clue
1. Untuk memotong string digit ke 1 dan 2 bisa dilakukan dengan cara `nim[1] + nim[2]`;
2. Untuk mengubah Integer menjadi String dapat dilakukan dengan menggunakan unit `sysutils`, dan menggunakan function `IntToStr(221401067)`;
3. Untuk mengubah String menjadi Integer dapat dilakukan dengan menggunakan unit `sysutils`, dan menggunakan function `StrToInt('221401067')`;
4. Terserah menggunakan berapa variabel, tapi punyaku ada 11 variabel. 1 Integer, 1 Char dan 9 String. `nimInt`, `kelas`,`nama`,`nim`,`nomorUrut`,`stambuk`,`kodeFakultas`,`kodeProdi`,`fakultas`,`prodi`,`jalur`.
