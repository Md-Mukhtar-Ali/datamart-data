const http = require('http');

const fs = require('fs');
//fs.readFile("sip.conf","utf8",(err,data)=>console.log(data));

http.createServer(function(req, res){
res.writeHead(200, {'Content-Type':'text/plain'});
	fs.readFile("sip.conf","utf8",(err,data)=>{
	res.write(data);
	res.end();

	});
}).listen(3000);


/*
http.createServer(function(req, res){
   res.writeHead(200, {"Content-Type":"text/plain"});
	res.write("hello");
	console.log("console print");
	res.end();
  }).listen(3000,function(err){
  console.log("server started on port 3000");
  });

  */
