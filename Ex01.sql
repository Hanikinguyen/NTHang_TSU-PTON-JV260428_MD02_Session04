USE session03;
DROP TABLE students;

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    birth_date DATE NOT NULL,
    gender VARCHAR(10) NOT NULL,
    email VARCHAR(100)
);
INSERT INTO students (student_id, full_name, birth_date, gender, email)
VALUES
(1, 'Nguyen Van An', '2003-05-12', 'Nam', 'an@gmail.com'),
(2, 'Tran Thi Binh', '2002-11-08', 'Nu', 'binh@gmail.com'),
(3, 'Le Van Cuong', '2003-02-20', 'Nam', NULL),
(4, 'Pham Thi Dung', '2004-07-15', 'Nu', 'dung@gmail.com'),
(5, 'Hoang Minh Duc', '2002-09-30', 'Nam', 'duc@gmail.com');
SELECT * FROM students;
SELECT student_id, full_name, email
FROM students;