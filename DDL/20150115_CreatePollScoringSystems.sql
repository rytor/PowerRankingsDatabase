CREATE TABLE dbo.PollScoringSystems (
Id int IDENTITY(1,1) PRIMARY KEY,
Description varchar(256) NOT NULL,
CreateDate datetime default GETDATE(),
ModifyDate datetime default null
);

ALTER TABLE dbo.Polls
ADD CONSTRAINT FK_Polls_ScoringSystem_Id
FOREIGN KEY (ScoringSystemId) REFERENCES dbo.PollScoringSystems(Id);