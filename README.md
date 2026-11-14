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

``` sql
SELECT 
  p.category,
  SUM(oi.sale_price) AS total_sales
FROM `bigquery-public-data.thelook_ecommerce.order_items` AS oi
JOIN `bigquery-public-data.thelook_ecommerce.products` AS p
  ON oi.product_id = p.id
GROUP BY p.category
ORDER BY total_sales DESC;

```

-----

## 💡 Insight Bisnis

1.  **Distribusi Kategori Produk (Soal 3):**
    
      * *(Tuliskan temuan Anda di sini, misalnya: Kategori X memiliki variasi produk terbanyak, menunjukkan fokus inventaris pada kategori tersebut...)*

2.  **Kontribusi Penjualan per Kategori (Soal 5):**
    
      * *(Tuliskan temuan Anda di sini, misalnya: Kategori Y menghasilkan nilai penjualan tertinggi meskipun jumlah produknya tidak sebanyak kategori X...)*

-----

## 🛠️ Alat & Teknologi

  * **DBMS:** Google BigQuery
  * **Bahasa Query:** Structured Query Language (SQL)
  * **Version Control:** GitHub

<!-- end list -->

``` 
 
```
