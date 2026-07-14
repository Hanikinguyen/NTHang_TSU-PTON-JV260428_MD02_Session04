-- [Bài tập] Quản lý nhân viên
CREATE TABLE employees (
    emp_id VARCHAR(10) PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    birth_year INT NOT NULL,
    department VARCHAR(50) NOT NULL,
    salary DECIMAL(12,0) NOT NULL,
    phone VARCHAR(15)
);
INSERT INTO employees (emp_id, full_name, birth_year, department, salary, phone)
VALUES
('EMP001', 'Nguyen Van Anh', 1998, 'IT', 15000000, '0901234567'),
('EMP002', 'Tran Thi Lan', 1997, 'HR', 12000000, '0912345678'),
('EMP003', 'Le Minh Quan', 1995, 'Marketing', 18000000, NULL),
('EMP004', 'Pham Quoc Anh', 1999, 'IT', 22000000, '0923456789'),
('EMP005', 'Hoang Gia Bao', 1996, 'Sales', 8000000, NULL),
('EMP006', 'Do Thi Huong', 1998, 'HR', 10000000, '0934567890'),
('EMP007', 'Nguyen Duc Anh', 2000, 'IT', 17000000, NULL),
('EMP008', 'Bui Thi Mai', 1994, 'Accounting', 4500000, '0945678901'),
('EMP009', 'Vo Thanh Nam', 1993, 'Sales', 6000000, '0956789012'),
('EMP010', 'Dang Minh Tuan', 1997, 'Marketing', 14000000, NULL);
-- Hiển thị danh sách nhân viên có mức lương từ 10.000.000 đến 20.000.000
SELECT * FROM employees
WHERE salary BETWEEN 10000000 AND 20000000;
-- Hiển thị nhân viên thuộc phòng ban IT hoặc HR
SELECT * FROM employees
WHERE department IN ('IT', 'HR');
-- Hiển thị nhân viên có họ tên chứa chữ “Anh”
SELECT * FROM employees
WHERE full_name LIKE '%Anh%';
-- Hiển thị nhân viên chưa có số điện thoại
SELECT * FROM employees
WHERE phone IS NULL;
-- Cập nhật lương tăng thêm 10% cho nhân viên phòng IT
UPDATE employees
SET salary = salary * 1.1
WHERE department = 'IT';
SELECT * FROM employees
WHERE department = 'IT';
-- Cập nhật số điện thoại cho nhân viên chưa có số điện thoại
UPDATE employees
SET phone = '0999999999'
WHERE phone IS NULL;
SELECT * FROM employees;
-- Xóa nhân viên có mức lương thấp hơn 5.000.000
DELETE FROM employees
WHERE salary < 5000000;
SELECT * FROM employees;