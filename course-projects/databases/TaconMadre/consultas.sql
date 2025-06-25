use taconmadre;

-- 1. Ventas totales por mes (últimos 12 meses)
SELECT DATE_FORMAT(sale_date,'%Y-%m') AS mes,
       ROUND(SUM(total_amount),2)      AS total_ventas
FROM   sales
WHERE  sale_date >= DATE_SUB(CURDATE(), INTERVAL 12 MONTH)
GROUP  BY mes
ORDER  BY mes;

-- 2. Top-5 productos más vendidos por cantidad
SELECT p.name, SUM(si.quantity) AS unidades
FROM   sale_items si
JOIN   products p ON p.product_id = si.product_id
GROUP  BY p.product_id
ORDER  BY unidades DESC
LIMIT  5;

-- 3. Ventas por canal
SELECT channel, ROUND(SUM(total_amount),2) AS total
FROM   sales
GROUP  BY channel
ORDER  BY total DESC;

-- 4. Top–5 productos más vendidos en el último año
SELECT p.name, SUM(si.quantity) AS total_sold
FROM sale_items si
JOIN sales s ON s.sale_id = si.sale_id
JOIN products p ON p.product_id = si.product_id
WHERE s.sale_date >= DATE_SUB(CURDATE(), INTERVAL 1 YEAR)
GROUP BY p.product_id
ORDER BY total_sold DESC
LIMIT 5;

-- 5. Ventas por canal y mes
SELECT DATE_FORMAT(sale_date,'%Y-%m') AS yyyymm,
       channel,
       SUM(total_amount) AS revenue
FROM sales
GROUP BY yyyymm, channel
ORDER BY yyyymm DESC, revenue DESC;

-- 6. Pedidos pendientes de envío > 48 h
SELECT o.order_id, u.first_name, o.order_date
FROM orders o
JOIN users u ON u.user_id = o.user_id
WHERE o.status='paid'
  AND TIMESTAMPDIFF(HOUR, o.order_date, NOW()) > 48;

INSERT INTO locations (country,state,city,zip_code) VALUES ('México','Nuevo León','San Nicolás','66527');

INSERT INTO orders (user_id,payment_method_id,shipping_address_id,total_amount,status)
VALUES ( 2, 1, LAST_INSERT_ID(), 0.00, 'created');

