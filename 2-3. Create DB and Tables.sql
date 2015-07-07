create database logisticdb;


CREATE TABLE dbo.Driver
	(
	StaffNumber int NOT NULL primary key,
	LastName varchar(50) NOT NULL,
	FirstName varchar(50) NULL,
	Surname varchar(50) NULL,
	DOB date NULL
	)
GO

CREATE TABLE dbo.Outlets
	(
	id int IDENTITY(1,1) primary key,
	Name varchar(50) NOT NULL,
	AddressOutlet varchar(100) NULL
	)
GO

CREATE TABLE dbo.[Itinerary List]
	(
	id int IDENTITY(1,1) primary key,
	DepartureDate date NOT NULL,
	ReturnDate  date NOT NULL,
	DriverNumber int not null,
	OutletId int not null,
	CONSTRAINT fk_PerDriver FOREIGN KEY (DriverNumber)
	REFERENCES Driver(StaffNumber),
	CONSTRAINT fk_PerOutlet FOREIGN KEY (OutletId)
	REFERENCES Outlets(id)
	)
GO