//comment this section
const express = require('express');
const fileUpload = require('express-fileupload');
const bodyParser = require('body-parser');
const mysql = require('mysql');
const path = require('path');
const app = express();

const port = 5000;
const { getHomePage } = require('./routes/index');
const { createAccountPage, createAccount } = require('./routes/account');
const { signInPage, signin } = require('./routes/signin');
const { registerPage, register } = require('./routes/register');
const { myAccountPage, myAccount } = require('./routes/myaccount');
const { deactivatePage, deactivate } = require('./routes/deactivate');

// create connection to database
// the mysql.createConnection function takes in a configuration object which contains host, user, password and the database name.
const db = mysql.createConnection({
  host: 'localhost',  // Our host
  user: 'root',       // Our username for our connection
  password: 'root',   // Our password
  database: 'soccersocialmediadb' // Name of the database
});

// connect to database
db.connect((err) => { if (err) { throw err; } console.log('Connected to database'); });
global.db = db;

// Configure the middleware
app.set('port', process.env.port || port); // set express to use this port
app.set('views', __dirname + '/views'); // set express to look in this folder to render our view
app.use(bodyParser.urlencoded({ extended: false })); 
app.use(bodyParser.json()); // parse form data client
app.use(express.static(path.join(__dirname, 'public'))); // configure express to use public folder
app.use(fileUpload()); // configure fileupload

// routes for our app
app.get('/', getHomePage); // home page get

// my routes
app.get('/createaccount', createAccountPage); // create account route to get page
app.post('/createaccount', createAccount);  // create account route to post 

app.get('/signin', signInPage); // sign in route to get page
app.post('/signin', signin);  // sign in route to post

app.get('/register', registerPage);// register route to get page
app.post('/register', register); // register route to post

app.get('/myaccount', myAccountPage); // my account route to get page
app.post('/myaccount', myAccount); // my account route to post

app.get('/deactivate', deactivatePage); // deactivate route to get page
app.post('/deactivate', deactivate); // deactivate route to post

// set the app to listen on the port
app.listen(port, () => {
  console.log(`Server running on port: ${port}`);
});