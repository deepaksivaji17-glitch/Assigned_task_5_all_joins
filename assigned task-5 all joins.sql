create database human_resource;
use human_resource;
create table colleges(
studentrollnumber varchar(50) primary key,
studentname varchar(50) not null,
studentid int,
month varchar(70),
fees varchar(90),
firstname varchar(50),
lastname varchar(80),
studentid varchar(50),
phone varchar(50) not null,
state varchar(50)not null);
insert into colleges(studentrollnumber,studentname,studentid,month,fees,firstname,lastname,studentid,phone,state)
values
('713922104006','ramu','1001','40000','rak','kum','22cs06','9054678322','tamilnadu'),
('713922104007','raju','1002','50000','kuku','juku','22cs07','9054678378','tamilnadu'),
('713922104008','rahul','1003','60000''hum','gihu','22cs08','9054678390','tamilnadu'),
('713922104009','ramana','1004','70000','jukum','git','22cs09','9054678331','tamilnadu'),
('713922104010','rajesh','1005','80000','joshva','shu','22cs10','9054678356','tamilnadu');
create table companys(
employeerollnumber varchar(50) primary key,
employeename varchar(50),
employeeid int,
month varchar(50));
insert into companys(employeerollnumber,employeename,employeeid,month)
values
('1001','rahulgandhi','cs9042'),
('1002','indhragandhi','cs9043'),
('1003','rajivgandhi','cs9044'),
('1004','soniagandhi','cs9045'),
('1005','priyankagandhi','cs9046');

create table ecommerces(
employeerollnumber varchar(70) primary key,
employeename varchar(50),
employeeid varchar(80),
phone varchar(50),
state varchar(50),
foreign key(employeerollnumber) references companys(employeerollnumber));

insert into ecommerces(employeerollnumber,employeename,employeeid,phone,state)
values
('1001','raju','tr456','678905643','andhra'),
('1002','raghul','tr456','678905983','andhra'),
('1003','ragum','tr456','678905003','andhra'),
('1004','rithika','tr456','678905443','andhra'),
('1005','ranjini','tr456','678903243','andhra');

create table librarys(
studentrollnumber varchar(50) primary key,
studentname varchar(50),
firstname varchar(40),
lastname varchar(80),
informto int default null,
phone varchar(50),
studentid varchar(50),
foreign key (studentrollnumber) references colleges (studentrollnumber));

insert into librarys(studentrollnumber,studentname,firstname,lastname,informto,phone,studentid)
values
('713922104006','raj','gopal','htt',null,'9054678909','2345cs'),
('713922104007','mathana','gopal','giru',null,'9054678909','2345cs'),
('713922104008','suthana','gopal','jaru',null,'9054678909','2345cs'),
('713922104009','ragu','gopal','berru',null,'9054678909','2345cs'),
('713922104010','rajiv','gopal','garru',null,'9054678909','2345cs');

-- 1. inner join========
select 
     colleges.studentname,
     librarys.studentrollnumber
from colleges
inner join librarys
on colleges.studentrollnumber=librarys.studentrollnumber;     
-- 2. left join==============
select 
     colleges.studentname,
     librarys.studentrollnumber
from colleges
left join librarys
on colleges.studentrollnumber=librarys.studentrollnumber; 
-- 3. right join==============
select 
     colleges.studentname,
     librarys.studentrollnumber
from colleges
right join librarys
on colleges.studentrollnumber=librarys.studentrollnumber; 
-- 4.full join=======
select 
     colleges.studentname,
     librarys.studentrollnumber
from colleges
left join librarys
on colleges.studentrollnumber=librarys.studentrollnumber
union
select 
     colleges.studentname,
     librarys.studentrollnumber
from colleges
right join librarys
on colleges.studentrollnumber=librarys.studentrollnumber; 
-- 5.self join=================================
-- left joinself========
select
     f.firstname as librarys,
     l.firstname as staff
from librarys f
left join librarys l
on f.informto=l.studentrollnumber;   
-- right joinself========
select
     f.firstname as librarys,
     l.firstname as staff
from librarys f
right join librarys l
on f.informto=l.studentrollnumber;  
-- union join=======
select
     f.firstname as librarys,
     l.firstname as staff
from librarys f
left join librarys l
on f.informto=l.studentrollnumber
union
select
     f.firstname as librarys,
     l.firstname as staff
from librarys f
right join librarys l
on f.informto=l.studentrollnumber;
-- 6.cross join===========
select 
     colleges.studentname,
     librarys.studentname
from colleges
cross join librarys;  
-- =====================================================================================================================   









