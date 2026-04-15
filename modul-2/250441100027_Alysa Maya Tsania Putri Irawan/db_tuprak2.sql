CREATE DATABASE db_tuprak2;
USE db_tuprak2;

CREATE TABLE dokter (
id_dokter INT PRIMARY KEY,
nama_dokter VARCHAR(100),
spesialisasi VARCHAR(100)
);

CREATE TABLE pasien (
id_pasien INT PRIMARY KEY,
nama_pasien VARCHAR(100),
tanggal_lahir DATE,
no_telepon VARCHAR(15)
);

CREATE TABLE rekam_medis (
id_rekam INT PRIMARY KEY,
id_pasien INT,
id_dokter INT, 
tanggal_periksa DATE,
diagnosis TEXT,

FOREIGN KEY (id_pasien)
REFERENCES pasien(id_pasien)
ON DELETE RESTRICT,

FOREIGN KEY (id_dokter)
REFERENCES dokter (id_dokter)
ON DELETE RESTRICT
);

INSERT INTO dokter VALUES 
(1, 'Dr. Alysa', 'Anak'),
(2, 'Dr. Maya', 'Jantung');

INSERT INTO pasien VALUES 
(1, 'Tsania', '2006-04-01','085278155520'),
(2, 'Putri', '2000-08-13', '081234567890');

INSERT INTO rekam_medis VALUES
(1,1,1, '2026-04-04', 'Demam'),
(2,2,2, '2025-12-31', 'Aritmia');

INSERT INTO rekam_medis VALUES 
(3,13,23, '2025-01-01', 'flu');

UPDATE pasien 
SET no_telepon = '089765432123'
WHERE id_pasien = 1;

UPDATE dokter 
SET spesialisasi = 'Penyakit Dalam'
WHERE id_dokter = 2;

DELETE FROM rekam_medis 
WHERE id_rekam = 1;

DROP TABLE rekam_medis;

CREATE TABLE rekam_medis (
id_rekam INT PRIMARY KEY,
id_pasien INT,
id_dokter INT,
tanggal_periksa DATE,
diagnosis TEXT,
FOREIGN KEY (id_pasien) REFERENCES pasien (id_pasien)
ON DELETE RESTRICT,
FOREIGN KEY (id_dokter) REFERENCES dokter (id_dokter)
ON DELETE CASCADE
);

INSERT INTO rekam_medis VALUES 
(1, 1, 1, '2026-01-04', 'Flu'),
(2, 2, 1, '2025-12-08', 'Sakit Perut');

DELETE FROM dokter 
WHERE id_dokter = 1;

SELECT * FROM rekam_medis;

DROP TABLE rekam_medis;

CREATE TABLE rekam_medis (
id_rekam INT PRIMARY KEY,
id_pasien INT,
id_dokter INT,
tanggal_periksa DATE,
diagnosis TEXT,
FOREIGN KEY (id_pasien) REFERENCES pasien (id_pasien)
ON DELETE RESTRICT,
FOREIGN KEY (id_dokter) REFERENCES dokter (id_dokter)
ON DELETE RESTRICT
);

INSERT INTO rekam_medis VALUES 
(1, 1, 1, '2026-11-09', 'Fluu'),
(2, 2, 2, '2025-04-05', 'Batuk');

TRUNCATE TABLE rekam_medis;

TRUNCATE TABLE pasien;



