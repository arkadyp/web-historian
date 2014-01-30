var path = require('path');
var archive = require('../helpers/archive-helpers');
var httpHelpers = require('./http-helpers');
// require more modules/folders here!

var get = function(req, res){
  if(path.extname(req.url) === '.css') {
    archive.getCSS(function(data){
      httpHelpers.sendResponse(res, data, 200, 'text/css');
    });
  } else {
    archive.getIndexPage(function(data){
      httpHelpers.sendResponse(res, data, 200);
    });
  }
};

var post = function(req, res){
  var post = "";
  req.on('data', function(data){
    post += data;
  });
  req.on('end', function(){
    var siteName = post.slice(4);
    if(archive.isUrlInList(siteName)){ //serve the saved page
      archive.getSavedSite(siteName, function(data){
        httpHelpers.sendResponse(res, data, 200);
      });
    } else {
      archive.addUrlToList(siteName);
      archive.getLoadingPage(function(data){
        httpHelpers.sendResponse(res, data, 200);
      });
    }

  });
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

