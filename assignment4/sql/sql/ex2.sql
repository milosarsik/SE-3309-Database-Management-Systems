CREATE DATABASE soccersocialmediadb;

CREATE TABLE gameMatch(
	homeTeam VARCHAR(50),
    awayTeam VARCHAR(50),
    date VARCHAR(50),
    importanceLevel INT,
    stadiumName VARCHAR(50),
    PRIMARY KEY(homeTeam, awayTeam, date)
);

CREATE TABLE meetup(
	meetupName VARCHAR(50),
    date VARCHAR(50),
    time VARCHAR(50),
    PRIMARY KEY(meetupName)
);

CREATE TABLE meetupLocation (
	street VARCHAR(50),
    city VARCHAR(50),
    postalCode VARCHAR(50),
    meetupName VARCHAR(50),
    PRIMARY KEY (street,city,postalCode)
);

CREATE TABLE registrationForm(
	formNumber INT,
    username VARCHAR(50),
    date VARCHAR(50),
    name VARCHAR(50),
    PRIMARY KEY(formNumber)
);

CREATE TABLE stadium(
	stadiumName VARCHAR(50),
    capacity INT,
    PRIMARY KEY(stadiumName)
);

CREATE TABLE teamAndStadium(
	teamName VARCHAR(50),
    country VARCHAR(50),
    stadiumName VARCHAR(50),
    rivalName VARCHAR(50),
    rivalLevel INT,
    PRIMARY KEY(teamName)
);

CREATE TABLE TeamAndStadiumLocation (
	street VARCHAR(50),
    city VARCHAR(50),
    postalCode VARCHAR(50),
    teamName VARCHAR(50),
    PRIMARY KEY (street,city,postalCode)
);

CREATE TABLE typeOfMeetup(
	meetupType VARCHAR(50),
    ageLimit INT,
    meetupCapacity INT,
    homeTeam VARCHAR(50),
    awayTeam VARCHAR(50),
    meetupDate VARCHAR(50),
    meetupName VARCHAR(50),
    PRIMARY KEY(meetupType)
);

CREATE TABLE user(
	username VARCHAR(50),
    password VARCHAR(50),
    firstName VARCHAR(50),
    lastName VARCHAR(50),
    email VARCHAR(50),
    phoneNumber INT,
    favoriteTeam VARCHAR(50),
    PRIMARY KEY(username, email)
);

CREATE TABLE userLocation (
	street VARCHAR(50),
    city VARCHAR(50),
    postalCode VARCHAR(50),
    username VARCHAR(50),
    PRIMARY KEY (street,city,postalCode)
); 

CREATE TABLE userMeetupInfo(
	name VARCHAR(50),
    date VARCHAR(50),
    meetupName VARCHAR(50),
    PRIMARY KEY(name, date)
);