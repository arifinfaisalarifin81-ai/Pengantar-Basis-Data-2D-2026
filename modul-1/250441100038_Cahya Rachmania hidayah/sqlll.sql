CREATE TABLE koleksi_langka (
    id_buku BIGINT PRIMARY KEY,
    judul VARCHAR(250),
    tahun_terbit YEAR,
    estimasi_harga DECIMAL(15,2)
);
DESCRIBE koleksi_langka;


CREATE TABLE pelanggan_setia (
    nomor_identitas INT
);
DESCRIBE pelanggan_setia

ALTER TABLE pelanggan_setia
MODIFY nomor_identitas VARCHAR(20);
DESCRIBE pelanggan_setia;



CREATE TABLE transaksi_harian (
    id_transaksi INT,
    jumlah_transaksi INT
);

TRUNCATE TABLE transaksi_harian;
DESCRIBE transaksi_harian
DROP TABLE transaksi_harian;



CREATE TABLE umpan_balik (
    id_komentar INT AUTO_INCREMENT PRIMARY KEY,
    nama_pengguna VARCHAR(100),
    isi_komentar TEXT,
    tanggal_komentar DATETIME
);
DESCRIBE umpan_balik;
