# TUGAS 2 (Deadline: Sesuka Hatiku)
Buat Program untuk mencetak KHS yang hasilnya adalah file dalam bentuk .txt, dengan nama file: 

`"KHS_{NIM}_{Nama Lengkap}.txt"`


## KETENTUAN:

### WAJIB:
1. Buat tipe record untuk matkul yang isinya:
   - Nama Matkul (Karakter)
   - SKS (Angka)

2. Buat tipe record untuk mahasiswa yang isinya:
   - Nama Mahasiswa (Karakter)
   - NIM (Karakter)
   - Huruf Nilai (array String) contoh: A, B+, B. Ini dipakai untuk huruf tiap matkul
   - Total Nilai (Angka). Berisi total nilai dari (huruf nilai setelah dikonversi jadi angka dan dikali dengan SKS).
   - Indeks Prestasi/IP (Angka). Didapat dari total nilai dibagi total SKS

3. Buat function untuk mengkonversi huruf nilai menjadi real, yang memiliki parameter huruf nilainya dengan ketentuan:
   - A	: 4
   - B+	: 3,5
   - B	: 3
   - C+	: 2,5
   - C	: 2
   - D	: 1
   - E	: 0

### OPTIONAL:
1. Variabel yang digunakan:
   - Variabel untuk mahasiswa (record mahasiswa)
   - Variabel untuk matkul (array of record matkul)
   - Variabel untuk jumlah sks (angka)
   - Variabel untuk banyak matkul (angka)
   - 2 Variabel untuk perulangan (angka)
   - Variabel untuk nama file (karakter)
   - Variabel untuk file (TextFile)
   - Variabel untuk panjang dari nama matkul terpanjang (angka)

## Format Input:
- Banyak Matkul (n)
- Nama Matkul 1
- SKS Matkul 1
- Nama Matkul 2
- SKS Matkul 2
- Nama Matkul 3
- SKS Matkul 3
- ...
- Nama Matkul n
- SKS Matkul n
- Nama Mahasiswa
- NIM Mahasiswa
- Nilai Matkul 1 Mahasiswa
- Nilai Matkul 2 Mahasiswa
- Nilai Matkul 3 Mahasiswa
- ...
- Nilai Matkul n Mahasiswa

## Contoh Input:
- 11 				(Banyak Matkul)
- Praktikum Basis Data 	(Nama Matkul 1)
- 1 				(SKS Matkul 1)
- Basis Data 			(Nama Matkul 2)
- 3				(SKS Matkul 2)
- Praktikum Struktur Data	(Nama Matkul 3)
- 1				(SKS Matkul 3)
- Struktur Data
- 3
- Kecerdasan Buatan
- 3
- Wirausaha Digital
- 2
- Praktikum Pemrograman Web
- 1
- Pemrograman Web
- 3
- Etika Profesi
- 2
- Basic English Grammar
- 2
- Komunikasi dan Pengembangan Diri	(Nama Matkul n)
- 2						(SKS Matkul n)
- Andreas Manatar Lumban Gaol		(Nama Mahasiswa)
- 221401067					(NIM Mahasiswa)
- A	(Nilai Matkul 1 Mahasiswa)
- A	(Nilai Matkul 2 Mahasiswa)
- A	(Nilai Matkul 3 Mahasiswa)
- A
- A
- A
- A
- A
- A
- A
- A	(Nilai Matkul n Mahasiswa)

## Contoh Video Input
[Contoh Video Input](https://drive.google.com/file/d/19fKbw1Tq2uLTVgsvvhCbH34-t5u3CTwX/view?usp=sharing)

## Output

* [Bentuk Output](KHS_221401067_Andreas%20Manatar%20Lumban%20Gaol.txt)

Informasi yang tampil dan bentuk tabel harus sama, tapi detail seperti garis bawah pada judul bisa berbeda

# Format Pengumpulan
1. Source Code dengan nama file `NIM_NAMA.pas`
2. File txt dengan nama file `KHS_NIM_NAMA.txt`

## Contoh
1. `067_Andreas.pas`
2. `KHS_221401067_Andreas Manatar Lumban Gaol.txt`
