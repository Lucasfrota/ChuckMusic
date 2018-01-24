SinOsc s => dac;

2::second => now;

for (0 => int i; i < 100; i++){
  100::ms => now;
  Std.rand2f(30.0, 1000.0) => s.freq;
}