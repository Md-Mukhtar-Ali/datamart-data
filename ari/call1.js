const ari = require('ari-client');

ari.connect('http://localhost:8088', 'mukhtar', '786Mukhtar!@#', function (err, client) {
  if (err) throw err;

  client.once('StasisStart', function (event, channel) {
    console.log('Channel entered Stasis:', channel.name);
  });

  client.start('myapp');

  // Originate call from 1001 to 1002
  client.channels.originate({
    endpoint: 'PJSIP/101',
    app: 'myapp',
    appArgs: 'dial,102'
  }, function (err, channel) {
    if (err) {
      console.error('Error:', err);
    } else {
      console.log('Channel created:', channel.id);
    }
  });
});

