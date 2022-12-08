'use strict';

//Import module
var mysql = require('mysql');

//Create connection
var dbMySQL = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    database: "vehicle"
});

var x;
//Get data from database
function getData() {
    return new Promise((resolve, reject) => {
        //Connecting to database
        dbMySQL.connect(function(err) {
            if (err)
            {
                reject(err);
            }
            else
            {
                dbMySQL.query("SELECT * FROM vehicle", function (e, result) {
                    if (e) 
                    {
                        reject(e);
                        return;
                    }
                    resolve(result);
            })
        }})
    })
};

//Export database data
module.exports = { getData };
