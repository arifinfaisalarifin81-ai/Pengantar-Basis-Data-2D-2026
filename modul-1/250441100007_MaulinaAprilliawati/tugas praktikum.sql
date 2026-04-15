CREATE DATABASE modul1;
USE modul1;

CREATE TABLE koleksi_langka (
id_buku BIGINT PRIMARY KEY,
judul VARCHAR(250),
tahun_terbit YEAR,
estimasi_harga DECIMAL(15,2)
);

CREATE TABLE pelanggan_setia (
id INT PRIMARY KEY,
nama VARCHAR(100),
nomor_identitas INT
);

ALTER TABLE pelanggan_setia
MODIFY nomor_identitas VARCHAR(20);

CREATE TABLE transaksi_harian (
id_transaksi INT PRIMARY KEY,
tanggal DATE);

TRUNCATE TABLE transaksi_harian

DROP TABLE transaksi_harian

CREATE TABLE umpan_balik (
id INT PRIMARY KEY,
isi_komentar TEXT 
);