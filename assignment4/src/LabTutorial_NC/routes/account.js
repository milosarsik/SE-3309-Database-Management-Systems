const fs = require('fs');

module.exports = {
    createAccountPage: (req, res) => {  // create account action for get request
        res.render('create-account.ejs', {
            title: 'SSM | Create Account',
            message: ''
        });
    },
    createAccount: (req, res) => { // create account action for post request
        let message = '';

        let firstName = req.body.firstName;
        let lastName = req.body.lastName;
        let email = req.body.email;
        let username = req.body.username;
        let password = req.body.password;
        let phoneNumber = req.body.phoneNumber;
        let favoriteTeam = req.body.favoriteTeam;

        // query to create account and insert into user table
        let accountQuery = "INSERT INTO `user` (username, password, firstName, lastName, email, phoneNumber, favoriteTeam) VALUES ('" +
            username + "', '" + password + "', '" + firstName + "', '" + lastName + "', '" + email + "', '" + phoneNumber
            + "', (SELECT teamName FROM `teamandstadium` WHERE teamandstadium.teamName = '" + favoriteTeam
            + "'))";

        // execte query
        db.query(accountQuery, (err, result) => { 
            if (err) {
                return res.status(500).send(err);
            }
        });

        // query to select all teams and fans per team and display in order of popularity
        let query = "SELECT favoriteTeam AS team, count(favoriteTeam) AS fans FROM user GROUP BY favoriteTeam ORDER BY count(favoriteTeam) DESC;"; 

        // execute query
        db.query(query, (err, result) => {
            if (err) {
                res.redirect('/');
            }
            // redirect
            res.render('topteamssignedin.ejs', {
                title: 'SSM | ' + username,
                teams: result,
                user: username
            });
        });
    },
};