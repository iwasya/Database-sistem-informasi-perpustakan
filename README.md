### Library Management System (Sistem Informasi Perpustakaan)

Ini adalah sebuah database MySQL (MariaDB) yang mewakili skema dan data untuk sistem informasi perpustakaan. Berikut adalah penjelasan singkat mengenai struktur tabel:

1. **Tabel `tb_anggota`:**
   - Menyimpan informasi anggota perpustakaan seperti nama, nomor telepon, dan alamat.

2. **Tabel `tb_buku`:**
   - Berisi data buku dengan informasi seperti judul, penulis, penerbit, tahun terbit, dan jumlah halaman.

3. **Tabel `tb_denda`:**
   - Menyimpan data denda dengan detail jenis denda dan total denda.

4. **Tabel `tb_peminjaman`:**
   - Mencatat informasi peminjaman buku, termasuk waktu pinjam dan jatuh tempo.

5. **Tabel `tb_pengembalian`:**
   - Berisi data pengembalian buku dengan informasi waktu pengembalian.

6. **Tabel `tb_petugas`:**
   - Menyimpan informasi petugas perpustakaan seperti nama, nomor telepon, dan alamat.

7. **Tabel `tb_prodi`:**
   - Berisi data program studi.

8. **Tabel `tb_rak`:**
   - Menyimpan informasi rak buku dengan nomor rak.

Selain itu, terdapat beberapa constraint dan foreign key yang menghubungkan tabel-tabel tersebut, seperti foreign key pada tabel `tb_peminjaman` dan `tb_pengembalian` yang terhubung dengan tabel `tb_anggota`, `tb_buku`, `tb_denda`, dan `tb_petugas`.

### Langkah 1: Persiapkan `Database`
Pastikan MariaDB sudah terinstall di sistem kamu dan kamu memiliki akses untuk membuat dan mengelola database.

### Langkah 2: Gunakan Perintah `mysql` atau `mysqlimport`

#### Melalui Command Line:
1. **Buka terminal atau command prompt.**
2. **Login ke MariaDB:**
   ```bash
   mysql -u username -p
   ```
   Gantilah `username` dengan username MariaDB kamu. Setelah itu, sistem akan meminta kamu memasukkan password.

3. **Buat Database (jika belum ada):**
   ```sql
   CREATE DATABASE nama_database;
   ```
   Gantilah `nama_database` dengan nama database yang ingin kamu buat.

4. **Gunakan Database:**
   ```sql
   USE nama_database;
   ```
   Gantilah `nama_database` dengan nama database yang sudah kamu buat.

5. **Impor Skrip SQL:**
   ```bash
   source /path/to/your/sql/file.sql;
   ```
   Pastikan untuk menggantikan `/path/to/your/sql/file.sql` dengan path yang benar ke file SQL kamu.

Cara Import `database`:
1) Buka phpMyAdmin di browser.
2) Buat Database Baru:
   - Klik "Database" di menu atas.
   - Masukkan nama database baru dan klik "Create".
3) Pilih Database yang Baru Dibuat:
   - Klik nama database yang baru dibuat di panel kiri.
   - Pilih Tab "SQL".
4) Impor Skrip SQL:
  - Klik "Choose File" dan pilih file SQL kamu.
  - Klik "Go" atau "Import" untuk memulai proses impor.
