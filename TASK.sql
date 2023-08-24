use assignment ;

create table student (
StudentID int,
Student_Name varchar (20)
);

insert into student (StudentID, Student_Name)
values ("1001", "Mary"), ("1002", "Jane"), ("1003", "Daniel"), ("1004", "jack"), ("1005", "Harold");
select * from student;

alter table student modify StudentID int primary key ;


create table Course (
CourseID int(5),
Course_Name varchar(20),
StudentID varchar(20)
);


insert into Course(CourseID , Course_Name , StudentID) 
values(5001,"PHP",1004) , (5002,"JAVA",1001),(5003,"ASP.NET",1001),(5004,"RUBY",5004);
select * from Course;



create table Teacher_Detail(
TeacherID int ,
Teacher_name varchar(20),
CourseID  int 
);
insert into Teacher_Detail( TeacherID ,  Teacher_name ,CourseID  )
values(3001,  "jill ",5003 ) , (3002,  "Greul",5002),(3003,  "Jemmkins ",5001),(3004,  "Polo ",5004 );
select * from Teacher_detail;


select * from student as s join Course as c on s.StudentID = c.StudentID  where c.Course_Name='ASP.NET';
select * from student as s cross join Course as c ;  
select *from student as s left join Course as c on s.StudentID =c.StudentID ;
select *from student as s right join Course as c on s.StudentID  = c.StudentID;
select * from student as s inner join Course as c on s.StudentID=c.StudentID inner join Teacher_Detail as t on c.CourseID=t.CourseID where c.Course_Name='ASP.NET';
