# sql-thelook-mini-analysix

Mini Project SQL: TheLook E-Commerce Analysis

## 📌 Deskripsi Proyek
Proyek ini merupakan bagian dari **Data Analytics Bootcamp** (Sesi 5) yang berfokus pada penggunaan **Basic SQL hingga Simple JOIN** untuk menjawab berbagai pertanyaan bisnis pada data e-commerce. 

Dalam proyek ini, saya berperan sebagai **Junior Data Analyst** di **TheLook E-commerce** untuk membantu tim bisnis memahami karakteristik produk, perilaku pelanggan, serta kinerja penjualan berdasarkan kategori produk.

---

## 🗂️ Dataset
Dataset yang digunakan adalah dataset publik Google BigQuery:
`bigquery-public-data.thelook_ecommerce`

Tabel yang dianalisis:
* `products`: Berisi informasi detail mengenai produk, kategori, merek, dan harga.
* `users`: Berisi data profil pelanggan.
* `orders`: Berisi riwayat transaksi pesanan pelanggan.
* `order_items`: Berisi rincian item dalam setiap pesanan beserta harga jual transaksi (`sale_price`).

---

## ❓ Pertanyaan Bisnis & Query SQL

### 1. Analisis Produk
**Tujuan:** Menampilkan 20 produk pertama beserta detail kategori, departemen, merek, dan harga retail.
Tim Product ingin mengetahui karakteristik produk yang dijual. Tampilkan nama produk,
kategori, department, merek, dan harga retail dari tabel products. Batasi hasil menjadi 20
produk pertama.
Materi: SELECT, FROM, LIMIT

-----

### 2\. Identifikasi Produk Premium

**Tujuan:** Mencari produk dengan `retail_price` di atas 100 dan mengurutkannya dari harga tertinggi.

Tim Marketing ingin menyiapkan kampanye untuk produk premium. Cari produk dengan
retail_price di atas 100. Tampilkan nama produk, kategori, merek, dan harga retail, lalu
urutkan dari harga tertinggi ke terendah.
Materi: WHERE, ORDER BY, DESC

-----

### 3\. Evaluasi Kategori Produk

**Tujuan:** Menghitung jumlah produk pada setiap kategori dan mengurutkannya dari yang terbesar.

Tim Product ingin mengetahui kategori dengan jumlah produk terbanyak. Hitung jumlah
produk pada setiap kategori dari tabel products, lalu urutkan hasil dari jumlah produk
terbesar.
Materi: COUNT, GROUP BY, ORDER BY

-----

### 4\. Mengenal Pelanggan dan Pesanan

**Tujuan:** Menggabungkan data pelanggan dan pesanan untuk melihat detail pesanan beserta nama pelanggan.

Tim CRM ingin melihat pelanggan yang melakukan pemesanan. Gabungkan tabel users dan
orders untuk menampilkan ID pesanan, status pesanan, tanggal pesanan dibuat, serta nama
depan dan nama belakang pelanggan.
Materi: INNER JOIN, ON, alias tabel

-----

### 5\. Analisis Penjualan per Kategori

**Tujuan:** Menghitung total nilai penjualan (`sale_price`) berdasarkan kategori produk dan mengurutkannya dari yang terbesar.

Manajer bisnis ingin mengetahui kategori produk dengan nilai penjualan terbesar. Gabungkan
tabel order_items dan products, lalu hitung total nilai penjualan berdasarkan kategori.
Tampilkan kategori dan total penjualan, kemudian urutkan dari nilai terbesar. Gunakan
order_items.sale_price sebagai nilai transaksi per item.
Materi: JOIN, SUM, GROUP BY, ORDER BY

-----

## 💡 Insight Bisnis

**Overview**:
Karakter Utama TheLook E-Commerce:
Dataset ini tidak berasal dari toko sungguhan yang melayani jual beli publik, melainkan berisi data sintetis.

**Insight Tugas 03:**
Produk kategori Intimates adalah produk dengan jumlah terbesar sebanyak 2363 items sedangkan produk dengan jumlah terendah (37) adaldah produk katagori clothing set

**Insight tugas 04:** tabel sudah tersedia berisi ID pesanan, status pesanan, tanggal pesanan dibuat, serta nama depan dan nama belakang pelanggan. Dapat dilihat bahwa Brian Waters adalah pelanggan paling awal yg melakukan order pada tgl 06 Januari 2019 dan status complete.

**Insight tugas 05:** tabel sudah tersedia berisi product category dan total nilai penjualannya. Dapat disimpulkan dari tabel ini bahwa product Outwear & coats memiliki nilai sales terbesar senilai 1.304.349. Dapat disimpulkan juga bahwa product clothing set memiliki nilai total penjualan terendah, senilai 16.688
 

-----

## 🛠️ Alat & Teknologi

  * **DBMS:** Google BigQuery
  * **Bahasa Query:** Structured Query Language (SQL)
  * **Version Control:** GitHub

<!-- end list -->

``` 
 
```
