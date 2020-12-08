# Welcome to Sonic Pi

in_thread do
  8.times do
    sample :drum_heavy_kick
    sleep 0.5
    
    sample :elec_snare
    4.times do
      sample :drum_tom_mid_soft
      sleep 0.125
    end
  end
end

in_thread do
  use_synth :zawa
  3.times do
    play :C4
    play :C5
    play :E5
    play :G5
    
    sleep 1
    
    play :F3
    play :C5
    play :F5
    play :A5
    
    sleep 1
  end
  
  1.times do
    play :D4
    play :D5
    play :G5
    play :B5
    
    sleep 1
    
    play :F3
    play :C5
    play :F5
    play :A5
    
    sleep 1
  end
end
