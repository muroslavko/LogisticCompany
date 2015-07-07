INSERT INTO dbo.Driver
VALUES ('5','Petrov','Petro','Petrovich','10.10.1985')

INSERT INTO dbo.Driver ([StaffNumber],[LastName],[DOB])
VALUES ('6','Lesiv','10.10.1980')

INSERT INTO dbo.Driver ([StaffNumber],[LastName])
select '7','Kelesnik'
union all
select '8','Maksimov'
union all
select '9','Zvosdan'