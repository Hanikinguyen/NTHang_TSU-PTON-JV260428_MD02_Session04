-- [Bài tập] Quản lý sản phẩm
CREATE TABLE products6 (
    product_id VARCHAR(10) PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,
    price DECIMAL(12,0) NOT NULL,
    quantity INT NOT NULL
);
INSERT INTO products6 (product_id, product_name, category, price, quantity)
VALUES
('P001', 'Dell Inspiron 15', 'Laptop', 15000000, 10),
('P002', 'MacBook Air M2', 'Laptop', 28000000, 5),
('P003', 'Samsung Galaxy S24', 'Phone', 13000000, 8),
('P004', 'Samsung Galaxy Tab S9', 'Tablet', 12000000, 3),
('P005', 'Xiaomi Redmi Note 14', 'Phone', 6000000, 0);

-- Hiển thị sản phẩm có giá từ 5.000.000 đến 15.000.000
SELECT * FROM products6
WHERE price BETWEEN 5000000 AND 15000000;
-- Hiển thị sản phẩm thuộc loại Laptop hoặc Tablet
SELECT * FROM products6
WHERE category IN ('Laptop', 'Tablet');
-- Hiển thị sản phẩm có tên bắt đầu bằng “Sam”
SELECT * FROM products6
WHERE product_name LIKE 'Sam%';
-- Hiển thị sản phẩm không thuộc loại Phone
SELECT * FROM products6
WHERE category <> 'Phone';
-- Giảm giá 5% cho các sản phẩm thuộc loại Laptop
UPDATE products6
SET price = price * 0.95
WHERE category = 'Laptop';
SELECT * FROM products6;
-- Xóa các sản phẩm có số lượng tồn kho bằng 0
DELETE FROM products6
WHERE quantity = 0;
SELECT * FROM products6;