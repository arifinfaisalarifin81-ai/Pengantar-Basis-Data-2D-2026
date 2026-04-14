CREATE TABLE dokter (
    id_dokter INT PRIMARY KEY,
    nama_dokter VARCHAR(100),
    spesialisasi VARCHAR(100)
);
DESC dokter;

CREATE TABLE pasien (
    id_pasien INT PRIMARY KEY,
    nama_pasien VARCHAR(100),
    tanggal_lahir DATE,
    no_telepon VARCHAR(15)
);
DESC pasien;


CREATE TABLE rekam_medis (
    id_rekam INT PRIMARY KEY,
    id_pasien INT,
    id_dokter INT,
    tanggal_periksa DATE,
    diagnosis VARCHAR(255),
    FOREIGN KEY (id_pasien) REFERENCES pasien(id_pasien) ON DELETE RESTRICT,
    FOREIGN KEY (id_dokter) REFERENCES dokter(id_dokter) ON DELETE RESTRICT
);

DESC rekam_medis;



INSERT INTO dokter VALUES
(1, 'Dr. Andi', 'Umum'),
(2, 'Dr. Siti', 'Gigi');
SELECT * FROM dokter;

INSERT INTO pasien VALUES
(1, 'Budi Santoso', '1998-05-10', '081234567890'),
(2, 'Rina Putri', '2000-03-21', '082345678901');
SELECT * FROM pasien;

INSERT INTO rekam_medis VALUES
(1, 1, 1, '2026-04-01', 'Demam'),
(2, 2, 2, '2026-04-02', 'Sakit Gigi');
SELECT * FROM rekam_medis;


UPDATE pasien
SET no_telepon = '089876543210'
WHERE id_pasien = 1;
SELECT * FROM pasien;

UPDATE dokter
SET spesialisasi = 'Dokter Umum'
WHERE id_dokter = 1;
SELECT * FROM dokter;

DELETE FROM rekam_medis
WHERE id_rekam = 2;
SELECT * FROM rekam_medis;



DROP TABLE rekam_medis;

CREATE TABLE rekam_medis (
    id_rekam INT PRIMARY KEY,
    id_pasien INT,
    id_dokter INT,
    tanggal_periksa DATE,
    diagnosis VARCHAR(255),
    FOREIGN KEY (id_pasien) REFERENCES pasien(id_pasien) ON DELETE RESTRICT,
    FOREIGN KEY (id_dokter) REFERENCES dokter(id_dokter) ON DELETE CASCADE
);

DESC rekam_medis;

INSERT INTO rekam_medis VALUES
(1, 1, 1, '2026-04-01', 'Demam'),
(2, 2, 1, '2026-04-02', 'Flu');

DELETE FROM dokter
WHERE id_dokter = 1;

SELECT * FROM rekam_medis;



DROP TABLE rekam_medis;

CREATE TABLE rekam_medis (
    id_rekam INT PRIMARY KEY,
    id_pasien INT,
    id_dokter INT,
    tanggal_periksa DATE,
    diagnosis VARCHAR(255),
    FOREIGN KEY (id_pasien) REFERENCES pasien(id_pasien) ON DELETE RESTRICT,
    FOREIGN KEY (id_dokter) REFERENCES dokter(id_dokter) ON DELETE RESTRICT
);

DESC rekam_medis;

DELETE FROM rekam_medis;
DELETE FROM dokter;
DELETE FROM pasien;

INSERT INTO dokter VALUES
(3, 'Dr. Andi', 'Umum'),
(4, 'Dr. Siti', 'Gigi');

INSERT INTO pasien VALUES
(3, 'Budi Santoso', '1998-05-10', '081234567890'),
(4, 'Rina Putri', '2000-03-21', '082345678901');

INSERT INTO rekam_medis VALUES
(3, 3, 3, '2026-04-01', 'Demam'),
(4, 4, 4, '2026-04-02', 'Flu');

SET FOREIGN_KEY_CHECKS = 0;

TRUNCATE TABLE rekam_medis;
TRUNCATE TABLE pasien;
TRUNCATE TABLE dokter;

SET FOREIGN_KEY_CHECKS = 1;
SELECT * FROM rekam_medis;