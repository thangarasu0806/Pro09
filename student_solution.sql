create table department100(
departmentID int,
departmentname varchar(30)
);
INSERT INTO department100 VALUES
(101,'COMPUTER SCIENCE'),
(102,'MATHEMATICS'),
(103,'PHYSICS');
CREATE TABLE student100(
studentID INT,
studentname VARCHAR(20),
departmentID int
);
insert into student100 values
(1001,'arun',101),
(1002,'diviya',102),
(1003,'karthik',101),
(1004,'nisha',103);
SELECT student100.studentname,
department100.departmentname
from student100
inner join department100
on student100.departmentID=department100.departmentID;
