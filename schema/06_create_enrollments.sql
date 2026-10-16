CREATE TABLE enrollments (
  enrollment_id INT SERIAL PRIMARY KEY,
  student_id int NOT NULL references students(student_id),
  class_id int NOT NULL references classes(class_id) on delete cascade,
  enrollment_date date DEFAULT current_date,
  created_at timestamp DEFAULT current_timestamp
);