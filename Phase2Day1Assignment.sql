create database OurExerciseDb
on primary (name='OurExercise_Db', Filename='D:\mphasis Simplilearn\Day22\OurExercise_Db.mdf',
size=24MB,Maxsize=48MB, filegrowth=8MB)
log on (name='OurExercise_Db_log',filename='D:\mphasis Simplilearn\Day22\OurExercise_Db_log.ldf',
size=24MB,Maxsize=48MB, filegrowth=8MB)
COLLATE SQL_Latin1_General_CP1_CI_AS



create table Product
(PId int identity(50,1)primary key,
Pname nvarchar (50) not null,
PPrice float check(PPrice >=50 and PPrice<=100000),
PCompany nvarchar(50) check(PCompany='Samsung' or PCompany='Apple' or PCompany='Redmi' or PCompany='Htc'),
Pty int default 1 check(pty>=1))
insert into Product values ('Tv',20000,'Samsung',2)
insert into Product values ('Mobile',20000,'Apple',3)
insert into Product values ('Bluetooh',200,'Redmi',DEFAULT)
insert into Product values ('Speaker',2000,'Samsung',4)
insert into Product values ('MobilePhone',2000,'Htc',5)
select * from Product;
insert into Product(Pname,PPrice,PCompany) values('Mobile',50000,'Apple')