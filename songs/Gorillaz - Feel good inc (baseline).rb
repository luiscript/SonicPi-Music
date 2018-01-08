use_bpm 140

define :baseline do
  use_synth :fm
  play :ds3
  sleep 1.5
  play :ds3
  sleep 0.5
  play :f3
  sleep 0.5
  play :fs3
  sleep 1
  play :b3
  sleep 1
  play :as3
  sleep 3.5
  play :gs3
  sleep 1.5
  play :gs3
  sleep 0.5
  play :b3
  sleep 0.5
  play :as3
  sleep 1
  play :fs3
  sleep 1
  play :ds3
  sleep 3.5
end

define :drums do
  sample :bd_fat
  sleep 1
  sample :sn_dolf
  sleep 1.5
  sample :bd_fat
  sleep 0.5
  sample :sn_dolf
  sleep 1
  sample :bd_fat
  sleep 1
  sample :sn_dolf
  sleep 1.5
  sample :bd_fat
  sleep 0.5
  sample :sn_dolf
  sleep 1
end


live_loop :base do
  baseline
end

live_loop :drum do
  drums
end





