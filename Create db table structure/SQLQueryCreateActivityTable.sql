CREATE TABLE Activity(
	Id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	UserId INT NOT NULL,
	Distance DECIMAL(5,2) NOT NULL,
	ActivityDate DATE NOT NULL,
	Duration TIME NOT NULL
);