CREATE VIEW usersAtMeetup AS 
SELECT username FROM user WHERE user.favoriteTeam="Liverpool";

CREATE VIEW popularteams AS
SELECT user.favoriteTeam AS team, COUNT(user.favoriteTeam) AS fans
FROM user GROUP BY user.favoriteTeam ORDER BY COUNT(user.favoriteTeam) DESC;

CREATE VIEW teaminfoallianzarena AS
SELECT * FROM teamandstadium
WHERE(teamandstadium.teamName = 
	(SELECT teamandstadium.teamName FROM teamandstadium
		WHERE (teamandstadium.stadiumName = 
			(SELECT stadium.stadiumName FROM stadium
				WHERE (stadium.stadiumName = 'Allianz Arena')))));