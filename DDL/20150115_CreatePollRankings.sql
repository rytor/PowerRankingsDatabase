CREATE TABLE dbo.PollRankings (
Id int IDENTITY(1,1) PRIMARY KEY,
PollId int FOREIGN KEY REFERENCES dbo.Polls(Id),
OptionId int FOREIGN KEY REFERENCES dbo.PollOptions(Id),
Rank int,
CreateDate datetime default GETDATE(),
ModifyDate datetime default NULL
);