# Counting and displaying the most popular teams by user selection
SELECT favoriteTeam AS team, count(favoriteTeam) AS fans
FROM user
GROUP BY favoriteTeam ORDER BY count(favoriteTeam) DESC;

#
SELECT * from user  
JOIN teamandstadium  ON user.favoriteTeam = teamandstadium.teamName
WHERE (SELECT capacity FROM stadium WHERE stadiumName = teamandstadium.stadiumName);

#
SELECT * FROM teamandstadium WHERE teamName = 
(SELECT teamName FROM teamandstadium WHERE stadiumname = (SELECT stadiumName FROM stadium WHERE stadiumName = "Allianz Arena"));

# Shows the attendance for each meetup for meetups in the last 10 days
SELECT meetupName, count(meetupName) AS attendance
FROM usermeetupinfo
WHERE date >= DATE("2019-11-14") AND date <= DATE("2019-12-09")
GROUP BY meetupName;

#
SELECT * FROM teamandstadium INNER JOIN stadium ON teamandstadium.stadiumName = stadium.stadiumName;

#
SELECT * FROM meetuplocation WHERE city IN (SELECT city FROM userlocation);