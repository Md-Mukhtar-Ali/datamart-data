const ari = require('ari-client');

ari.connect('http://localhost:8088', 'mukhtar', '786Mukhtar!@#', function (err, client) {
  if (err) throw err;

  client.start('myapp');

  client.on('StasisStart', async function (event, channel) {
    console.log('Incoming channel:', channel.name);
    await channel.answer();
    console.log('Channel answered');
  });
});

