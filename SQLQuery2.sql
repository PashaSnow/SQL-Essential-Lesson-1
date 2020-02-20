
-- Addition task

create database SomeDB
on
(
	Name = 'MyDB.mdf',
	FileName = 'E:\CyberBionic Systematic\T-SQL Essential\MyDB.mdf',
	size = 5 Mb,
	maxsize = 50 Mb,
	filegrowth = 5 Mb
)
log on
(
	Name = 'LogMyDB.ldf',
	FileName = 'E:\CyberBionic Systematic\T-SQL Essential\LogMyDB.ldf',
	size = 5 Mb,
	maxsize = 25 Mb,
	filegrowth = 5 Mb 
)
Collate Cyrillic_General_CI_AS

use SomeDB;
go

create table EmployeesBaseInfo
(
	EmployeeID int identity not null,
	FirstName NVarchar not null,
	LastName NVarChar not null
)
go

create table EmployeeStatus
(
	PossitionID int identity not null,
	Possition NVarChar not null,
	Salary int not null
)
go

create table FamilyInfo
(
	FamilyID int identity not null,
	FamilyStatus NVarChar null,
	Residence NVarChar null,
	Birthday date not null
)
go