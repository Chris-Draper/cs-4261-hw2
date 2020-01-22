var express = require('express');
var router = express.Router();

// connect to the database
app.use(function (req, res, next) {
    res.locals.connection = mysql.createConnection({
        host: '107.180.51.78',
        user: 'my_closet_admin',
        password: 'UbOc#MFl{nKz',
        database: 'my_closet_test'
    });
    res.locals.connection.connect();
    next();
});

// change the url that the front end hits
app.use('/api/v1/users', users);

// RESTful API GET
router.get('/', function (req, res, next) {
    res.locals.connection.query('SELECT * from account_data', function (error, results, fields) {
        if (error) {
            throw error;
        }
        res.send(JSON.stringify({ "status": 200, "error": null, "response": results }));
    });
});

// RESTful API POST

// RESTful API DELETE

// original default code
// /* GET home page. */
// router.get('/', function(req, res, next) {
//   res.render('index', { title: 'Express' });
// });

module.exports = router;
