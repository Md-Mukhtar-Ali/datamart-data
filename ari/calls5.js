const ari = require('ari-client');

ari.connect('http://localhost:8088', 'mukhtar', '786Mukhtar!@#', async (err, client) => {
  if (err) throw err;

  let channels = {
    caller: null,
    callee: null
  };

  // Main handler when a channel enters Stasis
  client.on('StasisStart', async (event, channel) => {
    console.log('Incoming channel:', channel.name, ', Args:', event.args);

    // Answer the incoming call
    await channel.answer();

    const [action, targetExten] = event.args;

    if (action === 'dial') {
      // Save caller channel
      channels.caller = channel;

      // Originate second call to target extension
      client.channels.originate({
        endpoint: `PJSIP/${targetExten}`,
        app: 'myapp',
        appArgs: 'bridge'
      }, (err, calleeChannel) => {
        if (err) {
          console.error('Error dialing second party:', err);
          return;
        }
        console.log('Second channel created:', calleeChannel.id);
        channels.callee = calleeChannel;
      });
    } else if (action === 'bridge') {
      channels.callee = channel;

      // Create bridge and add both channels
      client.bridges.create({type: 'mixing'}, async (err, bridge) => {
        if (err) {
          console.error('Error creating bridge:', err);
          return;
        }

        console.log('Bridge created:', bridge.id);

        await bridge.addChannel({channel: [channels.caller.id, channels.callee.id]});
        console.log('Channels bridged!');

        // Optional: Auto-hangup after 60 seconds
        setTimeout(() => {
          console.log('Auto hangup after 60 seconds');
          if (channels.caller) channels.caller.hangup();
          if (channels.callee) channels.callee.hangup();
        }, 60000);
      });
    }
  });

  // Handle hangup: if one hangs up, disconnect the other
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

  client.start('myapp');

  // Initiate the first call to 101
  client.channels.originate({
    endpoint: 'PJSIP/101',
    app: 'myapp',
    appArgs: 'dial,102'
  }, (err, channel) => {
    if (err) {
      console.error('Error initiating call:', err);
    } else {
      console.log('Call to 101 initiated, channel id:', channel.id);
    }
  });
});

