CREATE DATABASE CompanyDb
Go
USE CompanyDb
Go
CREATE TABLE department(
	DID int PRIMARY KEY,
	Dname nvarchar(40) NOT NULL
)

insert into department(DID,Dname) VALUES(10,'Finance')
insert into department(DID,Dname) VALUES(14,'RD')

CREATE TABLE employee(
	EID int PRIMARY KEY,
	Ename nvarchar(30) NOT NULL,
	DID int,
	constraint fk_employee foreign key(DID) references department(DID)
)
insert into employee(EID,Ename,DID) values(1,'Huey',10)
insert into employee(EID,Ename,DID) values(5,'Deway',10)
insert into employee(EID,Ename,DID) values(11,'Louie',10)
insert into employee(EID,Ename,DID) values(2,'Jack',14)
insert into employee(EID,Ename,DID) values(4,'Jill',14)

CREATE TABLE project(
	PID int PRIMARY KEY,
	Pname nvarchar(50) NOT NULL
)

insert into project(PID,Pname) values(27,'Alpha')
insert into project(PID,Pname) values(25,'Beta')
insert into project(PID,Pname) values(22,'Gamma')
insert into project(PID,Pname) values(26,'Pail')
insert into project(PID,Pname) values(21,'Hill')

CREATE TABLE employee_project(
	EPID int PRIMARY KEY,
	Btime decimal,
	EID int,
	PID int,
	constraint fk_employee_p foreign key(EID) references employee(EID),
	constraint fk_e_project foreign key(PID) references project(PID)
)

UPDATE employee_project set Btime = (4.5) where EPID = 1
