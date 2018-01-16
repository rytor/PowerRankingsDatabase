CREATE TABLE dbo.ScoringSystemWeights (
Id int IDENTITY(1,1) PRIMARY KEY,
ScoringSystemId int FOREIGN KEY REFERENCES dbo.PollScoringSystems(Id),
Rank int NOT NULL,
Weight int NOT NULL,
CreateDate datetime default GETDATE(),
ModifyDate datetime default NULL
);