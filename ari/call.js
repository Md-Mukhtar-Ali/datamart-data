const ari = require('ari-client');

ari.connect('http://localhost:8088', 'mukhtar', '786Mukhtar!@#', function (err, client) {
  if (err) throw err;

  client.start('myapp');

  let channels = {};

  client.on('StasisStart', async (event, channel) => {
    const args = event.args;

    console.log(`Channel ${channel.name} entered Stasis with args:`, args);

    await channel.answer();

    if (args[0] === 'dial' && args[1]) {
      // We're in the first channel (101), time to dial 102
      channels.caller = channel;

      // Dial 102
      client.channels.originate({
        endpoint: `PJSIP/${args[1]}`,
        app: 'myapp',
        appArgs: 'bridge',
        callerId: '1001'
      }, function (err, dialedChannel) {
        if (err) {
          console.error('Error dialing second channel:', err);
        } else {
          console.log('Second channel created:', dialedChannel.id);
        }
      });
    } else if (args[0] === 'bridge') {
      // Second channel (102) has now joined
      channels.callee = channel;

      // Create a bridge
      client.bridges.create({ type: 'mixing' }, function (err, bridge) {
        if (err) throw err;

        console.log('Bridge created:', bridge.id);

        // Add both channels to the bridge
        bridge.addChannel({
          channel: [channels.caller.id, channels.callee.id]
        }, function (err) {
          if (err) throw err;
          console.log('Channels bridged!');
        });
      });
    }
  });
});

