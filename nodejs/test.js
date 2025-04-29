var http = require('http');
var url = require('url');
var fs = require('fs');

const server = http.createServer((req, res)=>{
try{
	if(req.url === "/error"){
		throw new Error("Something went wrong!");
	}
res.writeHead(200, {'Content-Type':'text/html'});

res.write("<h1>hello world</h1>");
var q = url.parse(req.url, true).query;
var txt = q.year + "" +q.month;
res.write(txt)

fs.readFile('data.conf', function(err, data) {
res.write(data);
	res.end();
	})
}
catch(err){
res.writeHead(500, {'Content-Type': 'text/plain'});
res.end("Internal server error:"+err.message);
}


});



server.listen(3000, ()=>{
console.log("server started 3000 ports")
})
