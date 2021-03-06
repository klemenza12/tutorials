var express = require("express");
var path = require("path");
var bodyParser = require("body-parser");

var app = express();

// configure app

app.set("view engine", "ejs");
app.set("views", path.join(__dirname, "views"));

// use middleware

app.use(express.static(path.join(__dirname, "bower_components")));

app.use(bodyParser());

// define routes

app.use(require("./todos"));

// start the server

var port = process.env.PORT || 1337;

app.listen(port, function(){
    console.log("ready on port " + port);
    
});






/*app.get('/api/user/:id', function (req, res) {
    res.send (req.params.id);
});
*/