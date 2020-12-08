# Welcome to Sonic Pi

foo = (ring :C5, :E5, :G5)
bar = (ring :C5, :F5, :A5)
baz = (ring :B5, :D5, :G5)

# Functions

define :arp do |rng|
  8.times do
    play rng.tick
    sleep 0.125
  end
end

# Song

in_thread do
  4.times do
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
  arp foo
  arp bar
  arp foo
  arp baz
end
