const fs = require('fs');


module.exports = {
    deactivatePage: (req, res) => { // deactivate action for get request
        res.render('deactivate.ejs', {
            title: 'SSM | Deactivate Account',
            message: ''
        });
    },
    deactivate: (req, res) => { // deactivate action for get request
        let message = '';

        let email = req.body.email;
        let username = req.body.username;

        // delete from suse table
        let accountQuery = "DELETE FROM `user` WHERE user.username= '" + username + "' AND user.email= '" + email + "'";

        // execute query
        db.query(accountQuery, (err, result) => {
            if (err) {
                return res.status(500).send(err);
            }
        });

        // query to select all teams and fans per team and display in order of popularity
        let query = "SELECT favoriteTeam AS team, count(favoriteTeam) AS fans FROM user GROUP BY favoriteTeam ORDER BY count(favoriteTeam) DESC;"; //comment missing

        // execute query
        db.query(query, (err, result) => {
            if (err) {
                res.redirect('/');
            }
            res.render('topteams.ejs', {
                title: 'SSM | Home Page',
                teams: result,
                user: username
            });
        });

    },
};