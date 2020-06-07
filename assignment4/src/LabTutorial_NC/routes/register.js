const fs = require('fs');

module.exports = {
    registerPage: (req, res) => { // register action for get request

        let query = "SELECT * FROM `meetup`";

        // execute query
        db.query(query, (err, result) => {
            if (err) {
                res.redirect('/');
            }
            res.render('register.ejs', {
                title: 'SSM | Meetup Registration'
                , message: '',
                meetups: result
            });
        });
    },
    register: (req, res) => { // sing in action for post request

        let username = req.body.username;
        let firstName = req.body.firstName;
        let lastName = req.body.lastName;
        let meetupName = req.body.meetupName;
        let date = req.body.date;

        // query ot insert into usermeetupinfo
        let usermeetup = "INSERT INTO `usermeetupinfo` (name, date, meetupName) VALUES ('" + firstName + " " + lastName + "', '"
            + date + "', (SELECT meetupName FROM `meetup` WHERE meetup.meetupName = '" + meetupName + "'))";

        // execute query
        db.query(usermeetup, (err, result) => {
            if (err) {
                res.redirect('/');
            }
        });

        // query top isnert into registration form
        let regForm = "INSERT INTO `registrationform` (username, date, name) VALUES ('"
            + username + "', '"
            + date + "', '" + firstName + " " + lastName + "')";

        // execute query
        db.query(regForm, (err, result) => {
            if (err) {
                console.log(err);
            }
            res.render('registerprompt.ejs', {
                title: 'SSM | Registration Sucessful'
            });
        });
    }
};