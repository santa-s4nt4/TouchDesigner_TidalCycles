Quarks.gui;

ServerOptions.new.outDevice = 'Soundflower (2ch)';

SuperDirt.start;

(
//forward OSC message (localhost, port 3333)
var addr = NetAddr.new("IPアドレス", 7000);
OSCdef(\tidalplay2, {
  arg msg;
  addr.sendMsg("/play2", *msg);
}, '/play2', n);
)