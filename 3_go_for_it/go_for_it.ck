SinOsc s => dac;

<<<"go for it">>>;

2000 => float add_freq;

for (0 => int i; i < 7; i++){
  600 => s.freq;
  400::ms => now;

  800 => s.freq;
  400::ms => now;

  1000 => s.freq;
  600::ms => now;

  add_freq => s.freq;
  100::ms => now;

  100 +=> add_freq;
}

for (0 => int i; i < 4; i++){
  add_freq => s.freq;
  500::ms => now;

  300 => s.freq;
  500::ms => now;
}
