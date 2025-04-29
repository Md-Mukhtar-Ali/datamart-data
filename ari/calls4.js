const ari = require('ari-client');

ari.connect('http://localhost:8088', 'mukhtar', '786Mukhtar!@#', function (err, client) {
  if (err) throw err;

  client.start('myapp');

  let channels = {};

  client.on('StasisStart', async (event, channel) => {
    const args = event.args;
    console.log(`Incoming channel: ${channel.name}, Args:`, args);

    await channel.answer();

    if (args[0] === 'dial' && args[1]) {
      channels.caller = channel;

      console.log('Dialing second party:', args[1]);

      client.channels.originate({
        endpoint: `PJSIP/${args[1]}`,
        app: 'myapp',
        appArgs: 'bridge'
      }, function (err, dialedChannel) {
        if (err) {
          console.error('Error dialing second channel:', err);
        } else {
          console.log('Second channel created:', dialedChannel.id);
        }
      });

    } else if (args[0] === 'bridge') {
      channels.callee = channel;

      client.bridges.create({ type: 'mixing' }, function (err, bridge) {
        if (err) throw err;

        console.log('Bridge created:', bridge.id);

        bridge.addChannel({
          channel: [channels.caller.id, channels.callee.id]
        }, function (err) {
          if (err) throw err;
          console.log('Channels bridged!');
        });
      });
    }
  });
client.on('ChannelHangupRequest', function (event, channel) {
  console.log('Hangup request on channel:', channel.name);

  if (channels.caller && channels.caller.id === channel.id && channels.callee) {
    console.log('Caller hung up, hanging up callee...');
    channels.callee.hangup();
  } else if (channels.callee && channels.callee.id === channel.id && channels.caller) {
    console.log('Callee hung up, hanging up caller...');
    channels.caller.hangup();
  }
});

  // ✅ Originate the first call to 101 after connection
  setTimeout(() => {
    client.channels.originate({
      endpoint: 'PJSIP/101',
      app: 'myapp',
      appArgs: 'dial,102'
    }, function (err, channel) {
      if (err) {
        console.error('Error originating call to 101:', err);
      } else {
        console.log('Call to 101 initiated, channel id:', channel.id);
      }
    });
  }, 1000);
});

