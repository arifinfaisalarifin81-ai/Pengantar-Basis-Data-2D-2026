CREATE DATABASE db_e_library;

CREATE TABLE koleksi_langka (
	id_buku BIGINT PRIMARY KEY,
	judul VARCHAR(250) NOT NULL,
	tahun_terbit YEAR,
	estimasi_harga DECIMAL(15,2)
);

DESCRIBE koleksi_langka