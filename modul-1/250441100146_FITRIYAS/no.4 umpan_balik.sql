USE perpustakaan;

CREATE TABLE umpan_balik (
    id_feedback INT AUTO_INCREMENT PRIMARY KEY,
    isi_komentar TEXT
);

INSERT INTO umpan_balik (isi_komentar) VALUES
('Pelayanan sangat baik'),
('Aplikasi mudah digunakan');

SELECT * FROM umpan_balik;
DESCRIBE umpan_balik;
