CREATE TABLE inventaris_gudang_pusat (
		id_barang INT PRIMARY KEY,
		nama_barang VARCHAR(100),
		kode_sku VARCHAR(50),
		kategori VARCHAR (50),
		harga_satuan DECIMAL (12,2), 
		stok INT,  
		lokasi_rak VARCHAR (20),
		status_qc VARCHAR (20)
	);
	
DESCRIBE inventaris_gudang_pusat;