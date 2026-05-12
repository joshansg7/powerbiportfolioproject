CREATE TABLE players (
    PlayerID INT PRIMARY KEY,
    PlayerName VARCHAR(100),
    Country VARCHAR(50),
    Ranking INT,
    Age INT
);


SELECT
    Tournament,
    AVG(MatchDuration) AS AvgMatchDuration
FROM matches
GROUP BY Tournament
ORDER BY AvgMatchDuration DESC;

//Calculates the average match duration for each tournament and orders the results from longest to shortest average duration


SELECT
    p.PlayerName,
    COUNT(m.MatchID) AS MatchesWon
FROM matches m
JOIN players p
    ON m.WinnerPlayerID = p.PlayerID
GROUP BY p.PlayerName
ORDER BY MatchesWon DESC;

//Returns a count of the number of matches won by player
