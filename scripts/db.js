function db_connect() {
    console.log("Running db_connect method");
    var mysql = require('mysql');
    var con = mysql.createConnection({
        host: "localhost",
        user: "username",
        password: "password"
    });
    con.connect(function (err) {
        if (err) {
            throw err;
        }
        else {
            console.log("Connected!");
        }
    });
    return con;
}