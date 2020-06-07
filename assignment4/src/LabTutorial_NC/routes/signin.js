const fs = require('fs');

module.exports = {
    signInPage: (req, res) => { // sing in action for get request
        res.render('sign-in.ejs', {
            title: 'Soccer Social Media | Sign In'
            , message: ''
        });
    },
    signin: (req, res) => { // sign in action for post request

        let message = '';
        let username = req.body.username;
        let password = req.body.password;

        // query to check if user is in table and has created an account
        let usernameQuery = "SELECT * FROM `user` WHERE username = '" + username + "' AND password = '" + password + "'"; 

        // execute query
        db.query(usernameQuery, (err, result) => { 
            if (err) {
                return res.status(500).send(err);
            }
            else {
                // query to select all teams and fans per team and display in order of popularity
                let query = "SELECT favoriteTeam AS team, count(favoriteTeam) AS fans FROM user GROUP BY favoriteTeam ORDER BY count(favoriteTeam) DESC;"; 

                db.query(query, (err, result) => {
                    if (err) {
                        res.redirect('/');
                    }
                    // redirect
                    res.render('topteamssignedin.ejs', {
                        title: 'SSM | Trending Teams',
                        teams: result,
                        user: username
                    });
                });
            }
        });
    }
};