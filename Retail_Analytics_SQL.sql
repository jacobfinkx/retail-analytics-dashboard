CREATE DATABASE retail_analytics;
USE retail_analytics;
CREATE TABLE stores (
    store_id INT PRIMARY KEY,
    store_number VARCHAR(10),
    store_type VARCHAR(50),
    city VARCHAR(50),
    state VARCHAR(50),
    region VARCHAR(50)
);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    sku VARCHAR(20),
    product_name VARCHAR(100),
    department VARCHAR(50),
    category VARCHAR(50),
    subcategory VARCHAR(50),
    regular_price DECIMAL(10,2)
);

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    gender VARCHAR(10),
    age INT,
    income_bracket VARCHAR(20),
    loyalty_member BOOLEAN
);

CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    store_id INT,
    product_id INT,
    customer_id INT,
    transaction_date DATETIME,
    quantity INT,
    unit_price DECIMAL(10,2),
    discount_amount DECIMAL(10,2),
    payment_method VARCHAR(20)
);

CREATE TABLE inventory (
    inventory_id INT PRIMARY KEY,
    store_id INT,
    product_id INT,
    on_hand INT,
    on_order INT,
    last_restock_date DATE
);

CREATE TABLE promotions (
    promo_id INT PRIMARY KEY,
    product_id INT,
    promo_type VARCHAR(50),
    start_date DATE,
    end_date DATE,
    promo_discount DECIMAL(10,2)
);

SELECT COUNT(*) FROM sales;
SELECT COUNT(*) FROM products;
SELECT COUNT(*) FROM customers;
SELECT COUNT(*) FROM inventory;
SELECT COUNT(*) FROM promotions;
SELECT COUNT(*) FROM stores;

Sales By Department
SELECT
    p.category,
    ROUND(SUM(s.quantity * p.regular_price), 2) AS total_sales
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY p.category
ORDER BY total_sales DESC;

Total Revenue
SELECT
    ROUND(SUM(s.quantity * p.regular_price), 2) AS total_revenue
FROM sales s
JOIN products p ON s.product_id = p.product_id;

Top Products
SELECT
    p.product_name,
    SUM(s.quantity) AS units_sold
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY p.product_name
ORDER BY units_sold DESC
LIMIT 5;

Store Performance
SELECT
    st.store_number,
    ROUND(SUM(s.quantity * p.regular_price), 2) AS store_revenue
FROM sales s
JOIN stores st ON s.store_id = st.store_id
JOIN products p ON s.product_id = p.product_id
GROUP BY st.store_number
ORDER BY store_revenue DESC;
