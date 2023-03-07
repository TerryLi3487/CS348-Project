connect to CS348;

-- R7

-- Get list of current teams
SELECT ID, CITY, NICKNAME FROM TEAM WHERE MAX_YEAR = (select MAX(MAX_YEAR) FROM TEAM) ORDER BY CITY, NICKNAME, ID;

-- Get players on the selected team (Toronto Raptors in this case)
SELECT PLAYER_NAME, POS, AGE, G, GS, MP, FG, FGA, FG_2, THREEP, THREEPA, THREEP_PERCENTAGE, TWOP, TWOPA, TWOP_PERCENTAGE, EFG, FT, FTA, FT_2, ORB, DRB, TRB, AST, STL, BLK, TOV, PF, PTS 
FROM PLAYER JOIN PLAYER_SEASON_STAT ON PLAYER.ID = PLAYER_SEASON_STAT.PLAYER_ID 
WHERE PLAYER.TEAM_ID = 1610612761 AND PLAYER_SEASON_STAT.SEASON_ID = (
	SELECT MAX(SEASON_ID) FROM PLAYER_SEASON_STAT) ORDER BY PLAYER_NAME, PLAYER_ID;
