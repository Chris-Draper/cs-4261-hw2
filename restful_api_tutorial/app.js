// get npm mysql module
var mysql = require("mysql");
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