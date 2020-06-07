# Updating user information 
UPDATE user
SET username="milosarsic", firstName = 'Milos', lastName="Arsik"
WHERE firstName = "Angelita" AND lastName = "Allsupp";

SELECT * FROM soccersocialmediadb.user;

# Adding usermeetupinfo based on user username and the specified meetup date and time 
INSERT INTO usermeetupinfo VALUES(
	CONCAT((SELECT firstName FROM user WHERE user.username="milosarsic"), 
		" ", 
		(SELECT lastName FROM user WHERE user.username="milosarsic")), 
	(SELECT meetupDate FROM meetup WHERE meetup.meetupDate="2019-11-24"), 
    (SELECT meetupName FROM meetup WHERE meetup.meetupDate = "2019-11-24" AND meetup.time = "15:30"));
    
SELECT * FROM usermeetupinfo; 

# Deleteing all users with favorite team Barcelona 
DELETE FROM user WHERE user.favoriteTeam="Barcelona";

