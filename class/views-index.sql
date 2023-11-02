select s.student_name, s.class, sg.grade
from student s inner join studenr_grade sg
on s.id = sg.student_id;



select s.student_name, s.class, sg.grade
from student s inner join studenr_grade sg
on s.id = sg.student_id
where sg.subject = 'biology' and sg.grade = 'F';



create view biology_failed as
select s.student_name, s.class, sg.grade
from student s inner join studenr_grade sg
on s.id = sg.student_id
where sg.subject = 'biology' and sg.grade = 'F';




create view physics_failed as
select s.student_name, s.class, sg.grade
from student s inner join studenr_grade sg
on s.id = sg.student_id
where sg.subject = 'physics' and sg.grade = 'F';




create view chemistry_failed as
select s.student_name, s.class, sg.grade
from student s inner join studenr_grade sg
on s.id = sg.student_id
where sg.subject = 'chemistry' and sg.grade = 'F';


create view physics_gradeA as
select s.student_name, s.class, sg.grade
from student s inner join studenr_grade sg
on s.id = sg.student_id
where sg.subject = 'physics' and sg.grade = 'A';




insert into studenr_grade(student_id,subject,grade,mark) values
(7,'chemistry','A',96),
(8,'physics','B',85),
(6,'biology','F',12),
(8,'chemistry','B',87.5),
(6,'biology','C',74);



select s.student_name ,sg.subject,avg(sg.mark) as avarage_marks
from student s
inner join studenr_grade sg
on s.id = sg.student_id
group by s.student_name,sg.subject
order by s.student_name,avarage_marks desc;



create view top_student as
select s.student_name ,sg.subject,avg(sg.mark) as avarage_marks
from student s
inner join studenr_grade sg
on s.id = sg.student_id
group by s.student_name,sg.subject
order by avarage_marks desc;





CREATE TABLE employee(
    pk_emp_id SERIAL PRIMARY KEY,
    first_name VARCHAR (100),
    last_name VARCHAR (100),
    email VARCHAR(50),
    gender VARCHAR(30),
    phone VARCHAR(20),
    DOB DATE,
    place VARCHAR(50)
);

INSERT INTO employee VALUES
(1,'adithya','ev','adi@gmail.com','female','9898970665','2002-3-4','calicut'),
(2,'dhaya','er','daya@gmail.com','female','6543217897','2000-3-7','wayanad'),
(3,'adithya','k','adithya@gmail.com','female','876543215','1998-2-5','calicut'),
(4,'ajnas','m','ajnas@gmail.com','male','8765432345','2000-12-21','ernakulam'),
(5,'abhijith','ms','abhijith@gmail.com','male','9871234543','1998-10-10','kollam'),
(6,'jiptha','mp','jiptha@gmail.com','female','9871234321','2001-6-7','trissur'),
(7,'sandhya','p','sandya@gmail.com','female','9132456734','2002-4-9','kannur'),
(8,'samad','o','samad@gmail.com','male','9657234569','2002-4-1','kannur'),
(9,'arya','nair','arya@gmail.com','female','9876760665','1900-2-3','idukki'),
(10,'midhun','vm','midhun@gmail.com','male','8765432189','2003-3-3','malapuram');

select * from employee where email='daya@gmail.com';


CREATE INDEX employee_email_idx ON employee(email);