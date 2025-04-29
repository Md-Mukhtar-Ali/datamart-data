const ari = require('ari-client');

ari.connect('http://localhost:8088', 'mukhtar', '786Mukhtar!@#', function (err, client) {
  if (err) throw err;

  client.start('myapp');

  let channels = {};

  client.on('StasisStart', async (event, channel) => {
    const args = event.args;

    console.log(`Incoming channel: ${channel.name}, Args: ${args}`);

    await channel.answer();

    // First channel (caller 101)
    if (args[0] === 'dial' && args[1]) {
      channels.caller = channel;

      console.log('Dialing second party:', args[1]);

      // Dial 102
      client.channels.originate({
        endpoint: `PJSIP/${args[1]}`,
        app: 'myapp',
        appArgs: 'bridge',
        callerId: '101'
      }, function (err, dialedChannel) {
        if (err) {
          console.error('Error dialing second channel:', err);
        } else {
          console.log('Second channel created:', dialedChannel.id);
        }
      });

    } else if (args[0] === 'bridge') {
      // Second channel (callee 102)
      channels.callee = channel;

      // Create a bridge
      client.bridges.create({ type: 'mixing' }, function (err, bridge) {
        if (err) throw err;

        console.log('Bridge created:', bridge.id);

        // Add both channels
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

