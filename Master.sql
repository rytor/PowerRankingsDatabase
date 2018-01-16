CREATE TABLE Polls (
Id int IDENTITY(1,1) PRIMARY KEY,
Description varchar(256) NOT NULL,
ScoringSystemId int NOT NULL,
StartDate datetime NULL,
EndDate datetime NULL,
CreateDate datetime DEFAULT GETDATE(),
ModifyDate datetime NULL
);

CREATE TABLE dbo.PollOptions (
Id int IDENTITY(1,1) PRIMARY KEY,
PollId int FOREIGN KEY REFERENCES dbo.Polls(Id),
Name varchar(50),
CreateDate datetime DEFAULT GETDATE(),
ModifyDate datetime NULL
);

CREATE TABLE dbo.PollRankings (
Id int IDENTITY(1,1) PRIMARY KEY,
PollId int FOREIGN KEY REFERENCES dbo.Polls(Id),
OptionId int FOREIGN KEY REFERENCES dbo.PollOptions(Id),
Rank int,
CreateDate datetime default GETDATE(),
ModifyDate datetime default NULL
);

CREATE TABLE dbo.PollScoringSystems (
Id int IDENTITY(1,1) PRIMARY KEY,
Description varchar(256) NOT NULL,
CreateDate datetime default GETDATE(),
ModifyDate datetime default null
);

ALTER TABLE dbo.Polls
ADD CONSTRAINT FK_Polls_ScoringSystem_Id
FOREIGN KEY (ScoringSystemId) REFERENCES dbo.PollScoringSystems(Id);

CREATE TABLE dbo.ScoringSystemWeights (
Id int IDENTITY(1,1) PRIMARY KEY,
ScoringSystemId int FOREIGN KEY REFERENCES dbo.PollScoringSystems(Id),
Rank int NOT NULL,
Weight int NOT NULL,
CreateDate datetime default GETDATE(),
ModifyDate datetime default NULL
);