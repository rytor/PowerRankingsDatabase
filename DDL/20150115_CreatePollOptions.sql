CREATE TABLE dbo.PollOptions (
Id int IDENTITY(1,1) PRIMARY KEY,
PollId int FOREIGN KEY REFERENCES dbo.Polls(Id),
Name varchar(50),
CreateDate datetime DEFAULT GETDATE(),
ModifyDate datetime NULL
);