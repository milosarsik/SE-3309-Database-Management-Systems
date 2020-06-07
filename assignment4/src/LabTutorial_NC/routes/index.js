module.exports = {
  getHomePage: (req, res) => {
    let query = "SELECT favoriteTeam AS team, count(favoriteTeam) AS fans FROM user GROUP BY favoriteTeam ORDER BY count(favoriteTeam) DESC;";// query database to get all teams and fans count

    // execute query
    db.query(query, (err, result) => {
      if (err) {
        res.redirect('/');
      }
      res.render('topteams.ejs', {
        title: 'SSM | Home Page'
        , teams: result
      });
    });
  },
};