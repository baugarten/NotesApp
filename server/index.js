var express = require('express'),
    restful = require('node-restful'),
    mongoose = restful.mongoose;
var app = module.exports = express();

app.use(express.bodyParser());
app.use(express.query());
app.set('view engine', 'jade');

mongoose.connect("mongodb://localhost/movies_test");

var note = app.note = restful.model('notes', mongoose.Schema({
    username: { type: 'string', required: true },
    title: { type: 'string', required: true },
    body: { type: 'string' }
}))
  .methods(['get', 'post', 'put', 'delete']);


note.register(app, '/notes');

if (!module.parent) {
  app.listen(3000);
}

