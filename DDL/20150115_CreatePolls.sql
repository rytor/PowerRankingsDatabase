CREATE TABLE Polls (
Id int IDENTITY(1,1) PRIMARY KEY,
Description varchar(256) NOT NULL,
ScoringSystemId int NOT NULL,
StartDate datetime NULL,
EndDate datetime NULL,
CreateDate datetime DEFAULT GETDATE(),
ModifyDate datetime NULL
);