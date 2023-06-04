create database covid;


use covid;

create table addbeds
(
bedid int primary key auto_increment,
roomno nvarchar(50),
bedno nvarchar(50)
);

Create table addroom
(
roomid int primary key auto_increment,
roomnum nvarchar(50),
bedcap nvarchar(50)
);

Create table patientdetails
(
pid int primary key auto_increment,
fullname nvarchar(100),
symptoms nvarchar(500),
testreport nvarchar(500),
bedno nvarchar(50),
pstatus nvarchar(500)
);

create table addstaff
(
staffid int primary key auto_increment,
staffname nvarchar(500),
designation nvarchar(50),
salary nvarchar(50),
joining date
);


create table uregistration
(
uid int primary key auto_increment,
fname nvarchar(500),
address nvarchar(500),
mob bigint,
email nvarchar(50),
symptoms nvarchar(150),
testreport nvarchar(100),
uname nvarchar(50),
pass nvarchar(50)
);

create table bookbed
(
bookid int primary key auto_increment,
patientid nvarchar(500),
pname nvarchar(500),
roomno nvarchar(100),
bedno nvarchar(100),
bookingdate date
);

create table feedback
(
fid int primary key auto_increment,
pname nvarchar(500),
mob bigint,
email nvarchar(100),
pmsg nvarchar(500)
);

