CREATE DATABASE db_klinik_sehat_bersama;

CREATE TABLE dokter (
	id_dokter INT PRIMARY KEY,
	nama_dokter VARCHAR(30),
	spesialisasi VARCHAR(50)
);

CREATE TABLE pasien (
	id_pasien INT PRIMARY KEY,
	nama_pasien VARCHAR(30),
	tanggal_lahir DATE,
	no_telepon VARCHAR(14)
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
	REFERENCES dokter(id_dokter)
	ON DELETE RESTRICT
);


INSERT INTO dokter (id_dokter, nama_dokter, spesialisasi)
VALUES (101, 'Dr. Suyoto', 'sepesialis penyakit hati'), (102, 'Dr. black', 'sepesialis penyakit hytam');

INSERT INTO pasien (id_pasien, nama_pasien, tanggal_lahir, no_telepon)
VALUES (1, 'nafis', '2021/03/10', 0863637367), (2, 'sifan', '2023/05/20', 0980978787);

INSERT INTO rekam_medis (id_rekam, id_pasien, id_dokter, tanggal_periksa, diagnosis)
VALUES (10, 1, 101, CURDATE(), 'sakit hati melihat mantan bersama pria lain'), (20, 2, 102, CURDATE(), 'terkena penyakit langka setelah keseringan melihat mas amba');

INSERT INTO rekam_medis (id,rekam, id_pasien, id_dokter, tanggal_periksa, diagnosis)
VALUES (30, 3, 103, CURDATE(), 'pura pura sakit karena tidak mau masuk sekolah');

UPDATE pasien
SET no_telepon = '084773738922'
WHERE id_pasien = 2;

UPDATE dokter
SET spesialisasi = 'penyakit gila'
WHERE id_dokter = 102;

DELETE FROM rekam_medis
WHERE id_rekam = 20;



CREATE TABLE rekam_medis_baru (
	id_rekam INT PRIMARY KEY,
	id_pasien INT,
	id_dokter INT,
	tanggal_periksa DATE,
	diagnosis TEXT,
	
	FOREIGN KEY (id_pasien)
	REFERENCES pasien(id_pasien)
	ON DELETE RESTRICT,
	FOREIGN KEY (id_dokter)
	REFERENCES dokter(id_dokter)
	ON DELETE CASCADE
);

INSERT INTO dokter (id_dokter, nama_dokter, spesialisasi)
VALUES (104, 'test', 'ahli gigi');

INSERT INTO rekam_medis_baru (id_rekam, id_pasien, id_dokter, tanggal_periksa, diagnosis)
VALUES (40, 2, 104, CURDATE(), 'gatau, orang test doang kok'), (50, 1, 104, CURDATE(), 'test lagi ini');

DELETE FROM dokter
WHERE id_dokter = 104;

CREATE TABLE rekam_medis_baru_lagi (
	id_rekam INT PRIMARY KEY,
	id_pasien INT,
	id_dokter INT,
	tanggal_periksa DATE,
	diagnosis TEXT,
	
	FOREIGN KEY (id_pasien)
	REFERENCES pasien(id_pasien)
	ON DELETE RESTRICT,
	FOREIGN KEY (id_dokter)
	REFERENCES dokter(id_dokter)
	ON DELETE RESTRICT
);

INSERT INTO rekam_medis_baru_lagi (id_rekam, id_pasien, id_dokter, tanggal_periksa, diagnosis)
VALUES (10, 2, 102, CURDATE(), 'test'), (20, 1, 102, CURDATE(), 'test2');

TRUNCATE TABLE rekam_medis_baru_lagi;

TRUNCATE TABLE pasien;

SELECT * FROM pasien;

SELECT * FROM dokter;

SELECT * FROM rekam_medis;

SELECT * FROM rekam_medis_baru;

SELECT * FROM rekam_medis_baru_lagi;