CREATE TABLE courses (
  course_id INT SERIAL PRIMARY KEY,
  course_code varchar(20) UNIQUE NOT NULL,
  name varchar(100) NOT NULL,
  description text,
  credits int check (CREDITS > 0 and CREDITS <= 6),
  department_id int references departments(department_id),
  created_at timestamp DEFAULT current_timestamp'
);