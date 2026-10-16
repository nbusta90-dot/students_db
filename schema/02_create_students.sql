CREATE TABLE students (
  student_id SREIAL PRIMARY KEY,
  first_name varchar(50) NOT NULL,
  last_name varchar(50) NOT NULL,
  email varchar(100) UNIQUE NOT NULL,
  phone varchar(20),
  date_of_birth date,
  enrollment_date date DEFAULT current_date,
  department_id int REFERENCES departments(department_id),
  is_active boolean DEFAULT true,
  created_at timestamp DEFAULT current_timestamp
);