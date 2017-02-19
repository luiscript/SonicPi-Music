# Something about us (Daft punk)
# luiscript SonicPi Remix

# Coded and produced by Luis Fer García
# Original samples included

# @luiscript
# 2017


use_bpm 100
use_debug false

define :pianoMelody do
  use_synth :piano
  use_synth_defaults amp: 2, release: 4
  
  play [:f2, :a2, :d3]
  sleep 4
  play [:g2, :a2, :c3]
  sleep 4
  play [:a2, :c3, :e3]
  sleep 4
  play [:g2, :b2, :d3]
  sleep 4
  play [:f2, :a2, :d3]
  sleep 4
  play [:g2, :a2, :cs3]
  sleep 4
  play [:a2, :d3, :g3]
  sleep 4
  play [:a2, :d3, :f3]
  sleep 4
end

define :synth1 do
  use_synth :saw
  use_synth_defaults release: 0.25
  
  sleep 0.5
  play :d2
  sleep 0.75
  play :f2
  sleep 0.75
  play :d2
  sleep 1
  play :f2
  sleep 0.5
  play :a1
  sleep 0.25
  play :c2
  sleep 0.75
  play :d2
  sleep 0.75
  play :f2
  sleep 0.75
  play :d2
  sleep 1
  play :f2, release: 0.75
  sleep 0.75
  play :g2
  sleep 0.25
end

define :synth2 do
  use_synth :pluck
  use_synth_defaults amp: 0.8
  
  play :d3, release: 1
  sleep 1
  play :e3, release: 1
  sleep 0.75
  play :f3, release: 1.125
  sleep 2.25
  play [:c3, :e3], release: 1
  sleep 1
  play [:d3, :f3], release: 1
  sleep 0.75
  play [:e3, :g3], release: 1.125
  sleep 2.25
  play [:d3, :f3], release: 1
  sleep 1
  play [:e3, :g3], release: 1.125
  sleep 0.75
  play [:f3, :a3], release: 1.125
  sleep 2.25
  play [:f3, :a3], release: 0.25
  sleep 0.25
  play [:e3, :g3], release: 0.5
  sleep 0.5
  play [:e3, :g3], release: 0.5
  sleep 0.5
  play [:d3, :f3], release: 0.5
  sleep 0.5
  play [:d3, :f3], release: 1.5
  sleep 2.25
end

define :bassDrum do
  sample :bd_fat, amp: 2
  sleep 1
end

define :hiHat do
  sleep 0.5
  sample :drum_cymbal_pedal
  sleep 0.5
end

define :snare do
  sleep 1
  sample :sn_zome, amp: 0.5
  sleep 1
end

live_loop :somethingAboutUs  do
  
  3.times do
    with_fx :lpf, cutoff: 80 do
      pianoMelody
    end
  end
  
  with_fx :reverb do
    2.times do
      synth2
    end
  end
  
  sample :daftVoice, amp: 0.8
  sleep 64
  
  with_fx :lpf, cutoff: 80 do
    pianoMelody
  end
  
  sample :daftSynth, amp: 0.7
  sleep 96
  
  stop
  
end

with_fx :bitcrusher do
  live_loop :synth, delay: 32 do
    24.times do
      synth1
    end
    stop
  end
end

live_loop :bassSample, delay: 32 do
  18.times do
    sample :saub
    sleep 16
  end
  stop
end

live_loop :drum, delay: 32 do
  128.times do
    bassDrum
  end
  sleep 16
  142.times do
    bassDrum
  end
  stop
end

live_loop :hh, delay: 48 do
  112.times do
    hiHat
  end
  sleep 16
  142.times do
    hiHat
  end
  stop
end

live_loop :sn, delay: 48 do
  56.times do
    snare
  end
  sleep 16
  71.times do
    snare
  end
  stop
end


