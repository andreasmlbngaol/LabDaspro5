program stambuk;
uses Sysutils;

var
    nomUrut, Akt, fak, jrsn, NomorUrut : integer;
    fakultas,jurusan, jalur, nim, nama : string;
    kelas : char;
    label v;

begin
    write('Masukkan nama anda : ');
    readln(nama);
    write('Masukkan NIM anda : ');
    readln(nim);
    
    akt := StrToInt(nim[1]+nim[2]);
    fak := StrToInt(nim[3]+nim[4]);
    jrsn := StrToInt(nim[5]+nim[6]);
    nomUrut := StrToInt(nim[7]+nim[8]+nim[9]);
    NomorUrut := nomUrut mod 3;

    case (fak) of
        1 : 
            begin
            fakultas := 'FK';
                case (jrsn) of
                    00 : jurusan := 'Pendidikan Dokter';
            end;
        end;
        2 : 
            begin
            fakultas := 'FH';
                case(jrsn) of
                    00 : jurusan := 'Ilmu Hukum';
            end;
        end;
        3 : 
            begin
            fakultas := 'Pertanian';
                case(jrsn) of
                    1 : jurusan := 'Agroteknologi';
                    2 : jurusan := 'Manajemen Sumber Daya Perairan';
                    3 : jurusan := 'Agribisnis';
                    4 : jurusan := 'Teknologi Pangan';
                    6 : jurusan := 'Peternakan';
                    8 : jurusan := 'Teknik Pertanian dan Biosistem';
                    10 : jurusan := 'Agroteknologi (PSDKU)';
            end;
        end;
        4 : 
            begin
            fakultas := 'Teknik';
                case(jrsn) of
                    1 : jurusan := 'Teknik Mesin';
                    2 : jurusan := 'Teknik Elektro';
                    3 : jurusan := 'Teknik Industri';
                    4 : jurusan := 'Teknik Sipil';
                    5 : jurusan := 'Teknik Kimia';
                    6 : jurusan := 'Arsitektur';
                    7 : jurusan := 'Teknik Lingkungan';
                    31 : jurusan := 'Profesi Teknik Insinyur';
            end;
        end;
        5 : 
            begin
            fakultas := 'FEB';
                case(jrsn) of
                    1 : jurusan := 'Ekonomi Pembangunan';
                    2 : jurusan := 'Manajemen';
                    3 : jurusan := 'Akuntansi';
                    4 : jurusan := 'Kewirausahaan';
            end;
        end;
        6 : 
            begin
            fakultas := 'FKG';
                case(jrsn) of
                    0 : jurusan := 'Sarjana Kedokteran Gigi';
                    31 : jurusan := 'Profesi Kedokteran Gigi';
            end;
        end;
        7 : 
            begin
            fakultas := 'FIB';
                case(jrsn) of
                    1 : jurusan := 'Sastra Indonesia';
                    2 : jurusan := 'Sastra Melayu';
                    3 : jurusan := 'Sastra Batak';
                    4 : jurusan := 'Sastra Arab';
                    5 : jurusan := 'Sastra Inggris';
                    6 : jurusan := 'Ilmu Sejarah';
                    7 : jurusan := 'Etnomusikologi';
                    8 : jurusan := 'Sastra Jepang';
                    9 : jurusan := 'Perpustakaan';
                    10 : jurusan := 'Bahasa Mandarin';
            end;
        end;
        8 : 
            begin
            fakultas := 'FMIPA';
                case(jrsn) of
                    1 : jurusan := 'Fisika';
                    2 : jurusan := 'Kimia';
                    3 : jurusan := 'Matematika';
                    4 : jurusan := 'Biologi';
            end;
        end;
        9 : 
            begin
            fakultas := 'FISIP';
                case(jrsn) of
                    1 : jurusan := 'Sosiologi';
                    2 : jurusan := 'Ilmu Kesejahteraan Sosial';
                    3 : jurusan := 'Ilmu Administrasi Publik';
                    4 : jurusan := 'Ilmu Komunikasi';
                    5 : jurusan := 'Antropologi Sosial';
                    6 : jurusan := 'Ilmu Politik';
                    7 : jurusan := 'Ilmu Administrasi Bisnis';
            end;
        end;
        10 : 
            begin
            fakultas := 'FKM';
                case(jrsn) of
                    0 : jurusan := 'Kesehatan Masyarakat';
                    1 : jurusan := 'Ilmu Gizi';
            end;
        end;
        11 : 
            begin
            fakultas := 'Keperawatan';
                case(jrsn) of
                    1 : jurusan := 'Sarjana Keperawatan';
                    2 : jurusan := 'Profesi Ners';
            end;
        end;
        12 : 
            begin
            fakultas := 'Kehutanan';
                case(jrsn) of
                    1 : jurusan := 'Kehutanan';
            end;
        end;
        13 : 
            begin
            fakultas := 'Psikologi';
                case(jrsn) of
                    1 : jurusan := 'Psikologi';
            end;
        end;
        14 : 
            begin
            fakultas := 'Fasilkom-TI';
                case(jrsn) of
                    1 : jurusan := 'Ilmu Komputer';
                    2 : jurusan := 'Teknologi Informasi';
            end;
        end;
        15 : 
            begin
            fakultas := 'Farmasi';
                case(jrsn) of
                    1 : jurusan := 'Farmasi';
            end;
        end;
    
    else
        begin
            writeln('No such person exist');
            goto v;
        end
    end;

    case NomorUrut of
    1 : Kelas := 'A';
    2 : Kelas := 'B';
    0 : Kelas := 'C';
    end;

    if (nomUrut >30) and (nomUrut < 71) then 
        begin
            jalur := 'SNBT';
        end
    else if (nomUrut <=30)then
        begin  
            jalur := 'SNBP';
        end
    else 
        begin
            jalur := 'SMM';
        end;

    writeln('Nama : ', nama);
    writeln('NIM : ', nim);
    writeln('Fakultas : ', fakultas);
    writeln('Prodi : ', Jurusan);
    writeln('Stambuk : ', akt);
    writeln('Jalur : ', jalur);
    writeln('Kelas : ', kelas);

    v :
end.