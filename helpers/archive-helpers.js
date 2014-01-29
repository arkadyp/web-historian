var fs = require('fs');
var path = require('path');

/* You will need to reuse the same paths many times over in the course of this sprint.
  Consider calling this function in `request-handler.js` and passing in the necessary
  directories/files. This way, if you move any files, you'll only need to change your
  code in one place! Feel free to customize it in any way you wish.
*/

exports.paths = paths = {
  'siteAssets' : path.join(__dirname, '../web/public'),
  'archivedSites' : path.join(__dirname, '../archives/sites'),
  'list' : path.join(__dirname, '../archives/sites.txt')
};

// Used for stubbing paths for jasmine tests, do not modify
exports.initialize = function(pathsObj){
  for(var type in pathsObj) {
    // Check that the type is valid
    if (exports.paths[type] && pathsObj.hasOwnProperty(type)) {
      exports.paths[type] = pathsObj[type];
    }
  }
};

// The following function names are provided to you to suggest how you might
// modularize your code. Keep it clean!

var indexHTML = null;

exports.getIndexPage = function(cb){
  fs.readFile(paths.siteAssets+'/index.html', 'utf8', function (err, data) {
    if (err) throw err;
    cb(data);
  });
};

exports.getCSS = function(cb){
  fs.readFile(paths.siteAssets+'/styles.css', 'utf8', function (err, data) {
    if (err) throw err;
    cb(data);
  });
};

var URLS = {};
exports.readListOfUrls = function(){
};

exports.isUrlInList = function(){
};

exports.addUrlToList = function(){
};

exports.isURLArchived = function(){
};

exports.downloadUrls = function(){
};

exports.readFile = function(cb){

}