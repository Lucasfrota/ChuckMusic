SinOsc s => dac;

<<<"steps">>>;

for (0 => int i; i < 10; i++){
  100::ms => now;
  Std.rand2f(30.0, 1000.0) => s.freq;
}

0 => float freq;

for (0 => int i; i < 7; i++){
    if(i%2 == 0){       
        300.0 => freq;
    }else{
        -300.0 => freq;
    }
    for(0 => int j; j < 3; j++){
        300::ms => now;
        freq => s.freq;
        100 +=> freq;
        2 *=> freq;
        if(freq > 0){
            <<<"*">>>;
        }else{
            <<<" *">>>;
        }
    }
}

while(freq > 300){
    300::ms => now;
    500 -=> freq;
    freq => s.freq;
    <<<"**">>>;
}
800::ms => now;
800 => s.freq;

400::ms => now;
600 => s.freq;

800::ms => now;
800 => s.freq;
