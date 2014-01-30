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

var readFile = function(fileName, cb) {
  fs.readFile(fileName, 'utf8', function(err, data){
    if (err) {
      getLoadingPage(cb); //original file failed to load b/c it hasn't been saved yet; serve up the loading page
      return;
    }
    cb(data);
  });
};

exports.getIndexPage = function(cb){
  readFile(paths.siteAssets+'/index.html', cb);
};

exports.getCSS = function(cb){
  readFile(paths.siteAssets+'/styles.css', cb);
};

exports.getLoadingPage = getLoadingPage = function(cb){
  readFile(paths.siteAssets+'/loading.html', cb);
};

exports.getSavedSite = function(site, cb){
  readFile(paths.archivedSites+'/'+site, cb);
};

var urls = {};
exports.readListOfUrls = readListOfUrls = function(){
  readFile(paths.list, function(data){
    data = data.split(',');
    for(var i = 0; i < data.length; i++) {
      if(!(data[i] in urls)){
        urls[data[i]] = true;
      }
    }
  });
};

exports.isUrlInList = isUrlInList = function(url){
  return url in urls;
};

exports.addUrlToList = addUrlToList = function(url){
  if(!isUrlInList(url)) {
    //add to object
    urls[url] = true;

    //append to file
    fs.appendFile(paths.list, (','+url), function (err) {
      if (err) throw err;
      console.log('|'+url+'| was appended to file!');
    });
  }
};

exports.isURLArchived = function(){
};

exports.downloadUrls = function(){
};
