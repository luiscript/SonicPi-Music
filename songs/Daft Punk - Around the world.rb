# Daft punk with code - Around the world
# Coded by @luiscript with Sonic Pi

# If you enjoy PLEASE
# like | follow | suscribe | star

# facebook.com/luiscript
# twitter.com/luiscript
# youtube.com/user/luiscript
# github.com/luiscript

# Also consider support Sam Aaron on Patreon
# patreon.com/samaaron

# Include the daft_vocal_atw.flac file in Sonic Pi
# otherwise you won't listen the talkbox
# file included in github

use_bpm 122
use_debug false

live_loop :AroundTheWorld do

  live_loop :bassChannel do
    use_synth :saw

    16.times do
      baselineIntro
    end

    14.times do
      baseline
    end

    16.times do
      funkyBaseline
    end

    stop
  end

  live_loop :drumsChannel do

    32.times do
      drumlineIntro
    end

    32.times do
      drumline
    end

    48.times do
      drumline2
    end

    32.times do
      simpleDrumline
    end

    56.times do
      drumline
    end

    stop
  end

  live_loop :synthChannel do

    use_synth :tb303
    16.times do
      synthIntro
    end

    use_synth :chiplead
    live_loop :wah, delay: 32 do
      80.times do
        wahSynth
      end
      stop
    end

    use_synth :tb303
    8.times do
      synthesizer
    end

    sleep 96
    8.times do
      synthesizer
    end

    stop
  end

  live_loop :talkboxChannel, delay: 129 do
    8.times do
      talkbox
    end
    sleep 32
    16.times do
      talkbox
    end
    stop
  end

  stop
end

define :baselineIntro do
  with_fx :ixi_techno, mix: 0.2 do
    with_fx :lpf, cutoff: 50 + tick * 3 do
      play_pattern_timed [:e2, :d2, :d2, :b1, :b1, :a1, :a1, :g1], 0.5,
        release: 0.0, sustain: 0.125, amp: 2
    end
  end
end

define :baseline do
  with_fx :lpf, cutoff: 80 do
    play_pattern_timed [:a1, :a1, :a1, :a1, :b1, :c2, :c2, :c2, :c2, :d2, :e2, :e2, :e2, :e2, :fs2, :e2, :d2, :b1, :b1, :a1, :g1  ],
      [1, 1, 1, 0.5, 0.25, 1.25, 1, 1, 0.5, 0.25, 1.25, 1, 1, 1, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 1],
      release: 0.0, sustain: 0.3
  end
end

define :funkyBaseline do
  with_fx :lpf, cutoff: 80 do
    play_pattern_timed [:e1, :d2, :e2, :b1, :d2, :b1, :d2, :b1, :d2, :e2, :c1, :c2, :c2, :b1, :b1, :a1, :b1, :g1],
      [0.5, 0.5, 0.5, 0.5, 0.5, 0.25, 0.5, 0.25, 0.25, 0.25, 0.5, 0.75, 0.25, 0.5, 0.75, 0.25, 0.5, 0.5],
      release: 0.0, sustain: 0.3
  end
end

define :synthIntro do
  with_fx :ixi_techno, mix: 0.4 do
    with_fx :lpf, cutoff: 50 + tick * 3  do
      play_pattern_timed [:e4, :d4, :a3, :a3, :a3, :g3], [0.5, 1, 1, 1, 0.25, 0.25],
        attack: 0.0, sustain: 0.05, release: 0.1, res: 0.3
    end
  end
end

define :synthesizer do
  with_fx :rhpf, res: 0.8, cutoff: 65  do
    with_fx :echo, mix: 0.2, decay: 0.5 do
      play_pattern_timed [nil, :a3, :a3, :d4 , :c4, :a3, :a3, :g3, :b3, :e3, :e3, :e4, :d4, :b3, :a3, :g3, :g3, :a3, :e3],
        [3.5, 0.25, 0.25, 0.5, 1, 1, 1, 0.25, 3.75 , 0.25, 0.25, 0.5, 0.5, 0.5, 0.5, 1, 0.5, 0.25, 0.25 ],
        attack: 0.0, sustain: 0.03, release: 0.1, res: 0.8, amp: 0.6
    end
  end
end

define :wahSynth do
  with_fx :ixi_techno, mix: 1, phase: 2 do
    play_pattern_timed [:e3, :g3, :b2, :d3, :d3], [0.5, 1, 0.5, 1.75, 0.25],
      attack: 0.0, sustain: 0.05, release: 0.1, width: 0, amp: 0.7
  end
end

define :talkbox do
  sample :daft_vocal_atw
  sleep 8
end

define :drumlineIntro do
  with_fx :lpf, cutoff: 60 + tick * 2 do
    sample :bd_fat, amp: 2
    sleep 1
    sample :bd_fat, amp: 2
    sample :sn_zome, amp: 0.7
    sleep 1
  end
end

define :drumline do
  sample :bd_fat, amp: 3
  sleep 0.5
  sample :drum_cymbal_closed, amp: 0.7
  sleep 0.5
  sample :bd_fat, amp: 3
  sample :sn_zome, amp: 0.7
  sleep 0.5
  sample :drum_cymbal_closed, amp: 0.7
  sleep 0.5
end

define :drumline2 do
  sample :bd_fat, amp: 3
  sleep 0.5
  sample :drum_cymbal_closed, amp: 0.4
  sleep 0.5
  sample :bd_fat, amp: 3
  sample :sn_zome, amp: 0.7
  sleep 0.5
  sample :drum_cymbal_closed, amp: 0.4
  sleep 0.5
end

define :simpleDrumline do
  sample :bd_fat, amp: 3
  sleep 0.5
  sleep 0.5
  sample :bd_fat, amp: 3
  sample :sn_zome, amp: 0.7
  sleep 0.5
  sleep 0.5
end
