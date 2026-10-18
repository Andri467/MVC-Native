# MVC PHP Native - Data Buku (Perpustakaan)

Aplikasi CRUD sederhana untuk mempelajari dan menerapkan pola arsitektur *Model-View-Controller* (MVC) menggunakan PHP Native serta kontrol versi Git.

## Kebutuhan Sistem
- PHP 8.0 atau lebih baru
- MySQL / MariaDB
- Web server lokal seperti XAMPP (direktori `htdocs`) atau Laragon (direktori `www`)
- Git

## Instalasi
1. Kloning atau salin folder proyek `mvc-buku` ke dalam folder web server lokal Anda (contoh: `C:\xampp\htdocs\mvc-buku`).
2. Buat database baru di MySQL dan impor skrip dari file `database/perpus.sql`.
3. Sesuaikan konfigurasi koneksi database pada file `config/database.php` jika diperlukan.
4. Buka aplikasi melalui browser dengan mengakses: 
   `http://localhost/mvc-buku/public/index.php`

## Struktur MVC & Folder Proyek
- `app/models/` : Berisi class untuk mengelola data dan berinteraksi langsung dengan database (`Buku.php`).
- `app/controllers/` : Berisi alur logika aplikasi, menerima *request*, dan memanggil model/view (`BukuController.php`).
- `app/views/` : Berisi antarmuka HTML untuk pengguna (`index.php`, `create.php`, `edit.php`).
- `config/` : Menyimpan file konfigurasi koneksi database berbasis PDO (`database.php`).
- `database/` : Menyimpan skrip SQL pembuatan skema tabel dan data awal (`perpus.sql`).
- `public/` : Menjadi *front controller* atau pintu masuk utama aplikasi (`index.php`).

## Fitur Utama (CRUD)
- **Read**: Menampilkan daftar seluruh data buku perpustakaan.
- **Create**: Menambahkan data buku baru dengan atribut lengkap (Kode Buku, Judul, Penulis, Tahun Terbit, Kategori).
- **Update**: Mengubah atau memperbarui informasi data buku yang sudah ada.
- **Delete**: Menghapus data buku dari sistem.
- **Validasi & Keamanan**: Memeriksa input kosong serta menerapkan *prepared statement* dan `htmlspecialchars()` untuk mencegah celah keamanan.

## Histori Pengembangan Git
Gunakan perintah berikut di terminal untuk melihat tahapan pengembangan commit:
```bash
git log --oneline --graph --decorator