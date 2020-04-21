var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Home' });
});

router.get('/books', function (req, res, next) {
    res.render('books', {title: 'Books'});
});

router.get('/cars', function (req, res, next) {
  res.render('cars', {title: 'Cars'});
});

module.exports = router;
