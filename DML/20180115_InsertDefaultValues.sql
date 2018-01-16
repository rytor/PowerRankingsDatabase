INSERT INTO dbo.PollScoringSystems (Description) VALUES ('Default Scoring');

INSERT INTO dbo.ScoringSystemWeights (ScoringSystemId, Rank, Weight) VALUES (1, 1, 4);
INSERT INTO dbo.ScoringSystemWeights (ScoringSystemId, Rank, Weight) VALUES (1, 2, 3);
INSERT INTO dbo.ScoringSystemWeights (ScoringSystemId, Rank, Weight) VALUES (1, 3, 3);
INSERT INTO dbo.ScoringSystemWeights (ScoringSystemId, Rank, Weight) VALUES (1, 4, 2);
INSERT INTO dbo.ScoringSystemWeights (ScoringSystemId, Rank, Weight) VALUES (1, 5, 2);
INSERT INTO dbo.ScoringSystemWeights (ScoringSystemId, Rank, Weight) VALUES (1, 6, 1);

INSERT INTO dbo.Polls (Description, ScoringSystemId, StartDate, EndDate) VALUES ('Default Poll', 1, GETDATE(), GETDATE()+365);

INSERT INTO dbo.PollOptions (PollId, Name) VALUES (1, 'Top Option');
INSERT INTO dbo.PollOptions (PollId, Name) VALUES (1, 'Second Best Option');
INSERT INTO dbo.PollOptions (PollId, Name) VALUES (1, 'Third Best Option');
INSERT INTO dbo.PollOptions (PollId, Name) VALUES (1, 'Fourth Best Option');
INSERT INTO dbo.PollOptions (PollId, Name) VALUES (1, 'Fifth Best Option');
INSERT INTO dbo.PollOptions (PollId, Name) VALUES (1, 'Last Option');

INSERT INTO dbo.PollRankings (PollId, OptionId, Rank) VALUES (1, 1, 1);
INSERT INTO dbo.PollRankings (PollId, OptionId, Rank) VALUES (1, 2, 2);
INSERT INTO dbo.PollRankings (PollId, OptionId, Rank) VALUES (1, 3, 3);
INSERT INTO dbo.PollRankings (PollId, OptionId, Rank) VALUES (1, 4, 4);
INSERT INTO dbo.PollRankings (PollId, OptionId, Rank) VALUES (1, 5, 5);
INSERT INTO dbo.PollRankings (PollId, OptionId, Rank) VALUES (1, 6, 6);