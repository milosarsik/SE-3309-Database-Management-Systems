const fs = require('fs');

module.exports = {
    myAccountPage: (req, res) => {  // my account action for get request
        res.render('myaccountprompt.ejs', {
            title: 'SSM | Confirm User',
            message: ''
        });
    },
    myAccount: (req, res) => { // my account action for get request
        let message = '';

        let username = req.body.username;

        // join user and team and stadium and stadium into one table to display all user information
        let query = "SELECT * FROM `user` JOIN `teamandstadium` ON user.favoriteTeam = teamandstadium.teamName WHERE (SELECT capacity FROM `stadium` WHERE stadium.stadiumName = teamandstadium.stadiumName)";

        // execute query
        db.query(query, (err, result) => {
            console.log(result);

            if (err) {
                res.redirect('/');
            }
            res.render('myaccount.ejs', {
                title: 'SSM | My Account',
                info: result,
                user: username
            });
        });
    },
};