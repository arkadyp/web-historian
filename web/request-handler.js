var path = require('path');
var archive = require('../helpers/archive-helpers');
var httpHelpers = require('./http-helpers');
// require more modules/folders here!

var get = function(req, res){
  archive.getIndexPage(function(data){
    httpHelpers.sendResponse(res, data, 200);
  });
};

var post = function(req, res){
};

var options = function(req, res){
};

var methods = {
  'GET': get,
  'POST': post,
  'OPTIONS': options
};

exports.handleRequest = function (req, res) {
  var method = methods[req.method];
  method ? method(req, res) : httpHelpers.sendResponse(res, null, 404);
};

