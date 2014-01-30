var http = require("http");
var handler = require("./request-handler");
var httpHelpers = require('./http-helpers');
var archive = require('../helpers/archive-helpers');

var port = 8080;
var ip = "127.0.0.1";

archive.readListOfUrls(); //This can cause problems if user begins to query server before list is read
var server = http.createServer(handler.handleRequest);

console.log("Listening on http://" + ip + ":" + port);
server.listen(port, ip);

