var express = require('express');
var route = express.Router();

var todoItems = [
    { id: 1, desc: 'foo'},
    { id: 2, desc: 'bar'},
    { id: 3, desc: 'baz'}
];

route.get('/', function (req, res) {
    res.render ("index", {
        title: "My App",
        items: todoItems
    });    
});

route.post('/add', function (req, res) {
    var newItem = req.body.newItem;
    todoItems.push({
                id: todoItems.leght + 1,
                desc: newItem
    });
    res.redirect('/');
});

module.exports = route;