-- [Bài tập] Cập nhật và xóa dữ liệu (UPDATE + DELETE)
USE session03;
-- Cập nhật email cho sinh viên chưa có email
UPDATE students
SET email = 'cuong@gmail.com'
WHERE email IS NULL;
SELECT * FROM students;
-- Cập nhật giới tính cho sinh viên có mã sinh viên là 5
UPDATE students
SET gender = 'Nu'
WHERE student_id = '5';
SELECT * FROM students
WHERE student_id = '5';
-- Xóa sinh viên có mã sinh viên là 3
DELETE FROM students
WHERE student_id = '3';
SELECT * FROM students;