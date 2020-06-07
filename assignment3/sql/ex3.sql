# Inserting into registration form, getting the username from user, and the date and full name from the usermeetupinfo relation
INSERT INTO registrationform (username, date, name)
VALUES ((SELECT username FROM user WHERE user.username = "milosarsic"), 
	(SELECT date FROM usermeetupinfo WHERE usermeetupinfo.meetupName = "Juventus F.C. Fan Party"), 
    (SELECT name FROM usermeetupinfo WHERE usermeetupinfo.date = 
		(SELECT meetupDate FROM meetup WHERE meetup.meetupName = "Juventus F.C. Fan Party")));

SELECT * FROM registrationform;

# Inserting into meetuplocation a new location of a meetup. meetupName reference a name in meetup that matches the date and time 
INSERT INTO meetuplocation(street, city, postalCode, meetupName) 
VALUES ("1377 South Wenige Drive", "Toronto", "N5X4N1", 
	(SELECT meetupName 
		FROM meetup 
		WHERE meetup.meetupDate="2019-11-24"
		AND meetup.time="15:30"));
    
SELECT * FROM meetuplocation;

# Inserting into user, this is like creating a new user. favoriteTeam reference teamName in teamandstadium
INSERT INTO user(username, password, firstName, lastName, email, phoneNumber, favoriteTeam) 
	VALUES("milosarsic", "milosarsic1", "Milos", "Arsik", "milosarsic14@gmail.com", "5194326353", (SELECT teamName 
																									FROM teamandstadium 
																									WHERE teamandstadium.teamName = "Juventus"));
                                                                                           
SELECT * FROM user;