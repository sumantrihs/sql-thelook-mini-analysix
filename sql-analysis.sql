--Tugas Portofolio 01

SELECT 
  name AS product_name,
  category,
  department,
  brand,
  retail_price
FROM bigquery-public-data.thelook_ecommerce.products
order by name
LIMIT 20;

--Tugas Portofolio 02
SELECT 
  name AS product_name,
  category,
  brand,
  retail_price
FROM bigquery-public-data.thelook_ecommerce.products
WHERE retail_price > 100
ORDER BY retail_price DESC;

--Tugas Portofolio 03
SELECT 
  category,
  COUNT(id) AS total_products
FROM bigquery-public-data.thelook_ecommerce.products
GROUP BY category
ORDER BY total_products DESC;
--insight : Produk kategori Intimates adalah produk dengan jumlah terbesar sebanyak 2363 items sedangkan produk dengan jumlah terendah (37) adaldah produk katagori clothing set

--Tugas Portofolio 04
SELECT
  o.order_id,
  o.status AS order_status,
  o.created_at AS order_date,
  u.first_name,
  u.last_name
FROM bigquery-public-data.thelook_ecommerce.orders AS o
INNER JOIN
bigquery-public-data.thelook_ecommerce.users AS u
  ON o.user_id = u.id
  order by order_date ASC;

--Tugas Portofolio 05
SELECT
p.category,
round(sum(oi.sale_price),2) AS Total_Sale
FROM 
bigquery-public-data.thelook_ecommerce.order_items AS oi
join
bigquery-public-data.thelook_ecommerce.products AS p
ON oi.product_id = p.id
group by p.category
order by Total_Sale DESC;
