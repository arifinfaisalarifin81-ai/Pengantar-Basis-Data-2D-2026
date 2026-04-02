USE perpustakaan;

CREATE TABLE transaksi_harian (
    id_transaksi INT,
    total DECIMAL(10,2)
);

INSERT INTO transaksi_harian VALUES
(1, 50000.00),
(2, 75000.00);

SELECT * FROM transaksi_harian;

TRUNCATE TABLE transaksi_harian;

SELECT * FROM transaksi_harian;