create database start;
use start;

create table login(username varchar(230),password varchar(230));

insert into login values('Swapnil','1234');
create table student(
              name varchar(20),
              fathers_name varchar(20), 
              age varchar(5), 
              dob varchar(20),
              address varchar(30),
              phone varchar(15),
              email varchar(25),
              class_x varchar(10),
              class_xii varchar(10),
              aadhar varchar(15),
              rollno varchar(15) primary key not null,
              course varchar(10),
              branch varchar(20));
              
         select * from login;
         
create table teacher(name varchar(20),
                    fathers_name varchar(20), 
                    age varchar(5), 
                    dob varchar(20),
                    address varchar(30), 
                    phone varchar(15), 
                    email varchar(25), 
                    class_x varchar(10), 
                    class_xii varchar(10),
                    aadhar varchar(15),
                    course varchar(10), 
                    emp_id varchar(15) primary key not null,
                    dept varchar(20));
                    
                    
create table fee(rollno varchar(20), 
                 name varchar(25),
                 fathers_name varchar(25),
                 course varchar(10),
                 branch varchar(20), 
                 semester varchar(10),
                 fee_paid varchar(15),
                 foreign key(rollno) references student(rollno));
                 
                 
create table attendance_student(rollno varchar(20),
							     Date varchar(30),
                                 first varchar(10),
                                 second varchar(10),
                                 foreign key(rollno) references student(rollno));
                                 
                                 
                                 
create table attendance_teacher(emp_id varchar(20), 
                                Date varchar(30), 
                                first varchar(10), 
                                second varchar(10),
                                foreign key(emp_id) references teacher(emp_id));
                                
                                
                                
create table marks(rollno varchar(15), 
                   marks1 varchar(20),
                   marks2 varchar(20),
                   marks3 varchar(20), 
                   marks4 varchar(20), 
                   marks5 varchar(20),
                   foreign key(rollno) references student(rollno));
                   
                   
                   
create table subject(rollno varchar(15), 
                    subject1 varchar(20), 
                    subject2 varchar(20), 
                    subject3 varchar(20), 
                    subject4 varchar(20), 
                    subject5 varchar(20),
                    foreign key(rollno) references student(rollno));


describe student;
describe teacher;
describe fee;
describe marks;
describe subject;
describe attendance_student;
describe attendance_teacher;
describe subject;
