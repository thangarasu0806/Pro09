USE CollegeDB;

CREATE TABLE Department (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);

CREATE TABLE Student (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Department(department_id)
);

INSERT INTO Department (department_id, department_name) VALUES
(1, 'Computer Science'),
(2, 'Commerce'),
(3, 'Mathematics');

INSERT INTO Student (student_id, student_name, department_id) VALUES
(101, 'John', 1),
(102, 'David', 2),
(103, 'Alex', 1),
(104, 'Sam', 3);

SELECT 
    s.student_id,
    s.student_name,
    d.department_name
FROM Student s
INNER JOIN Department d
ON s.department_id = d.department_id;
