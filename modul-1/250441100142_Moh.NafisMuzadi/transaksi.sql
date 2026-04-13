CREATE DATABASE transaksi;

CREATE TABLE transaksi_harian (
	tanggal DATE,
	jumlah DECIMAL(10,2)
);

TRUNCATE TABLE transaksi_harian;

DROP TABLE transaksi_harian;