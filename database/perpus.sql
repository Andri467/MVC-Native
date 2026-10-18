CREATE DATABASE IF NOT EXISTS perpus
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

USE perpus;

CREATE TABLE IF NOT EXISTS buku (
    id INT AUTO_INCREMENT PRIMARY KEY,
    kode_buku VARCHAR(20) NOT NULL UNIQUE,
    judul VARCHAR(150) NOT NULL,
    penulis VARCHAR(100) NOT NULL,
    tahun_terbit YEAR NOT NULL,
    kategori VARCHAR(50) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO buku (kode_buku, judul, penulis, tahun_terbit, kategori) VALUES
('BK-001', 'Belajar Pemrograman PHP', 'Andi Pratama', 2022, 'Teknologi'),
('BK-002', 'Arsitektur MVC Modern', 'Budi Santoso', 2023, 'Software Engineering'),
('BK-003', 'Database MySQL Lanjutan', 'Citra Lestari', 2021, 'Basis Data');