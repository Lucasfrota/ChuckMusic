SinOsc s => dac;

for (0 => int i; i < 10; i++){
  100::ms => now;
  Std.rand2f(30.0, 1000.0) => s.freq;
}

for (0 => int i; i < 7; i++){
    0 => float freq;
    if(i%2 == 0){       
        300.0 => freq;
    }else{
        -300.0 => freq;
    }
    for(0 => int j; j < 3; j++){
        500::ms => now;
        freq => s.freq;
        100 +=> freq;
        2 *=> freq;
        <<<freq>>>;
    }
}
