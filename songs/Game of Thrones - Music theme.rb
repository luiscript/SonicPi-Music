# Game of Thrones (Music theme)
# Coded by @luiscript with sonicPi
# github.com/luiscript

use_bpm 180

use_synth :pluck
use_synth_defaults amp: 2


define :s1 do
  play_pattern_timed [:e3, :a2], 1, release: 1
  play_pattern_timed [:c3, :d3], 0.5, release: 0.5
end


define :s2 do
  play_pattern_timed [:e3, :a2], 1, release: 1
  play_pattern_timed [:cs3, :d3], 0.5, release: 0.5
end


define :s3 do
  play_pattern_timed [:e3, :a2], 3, release: 0.6
  play_pattern_timed [:c3, :d3], 0.5, release: 0.5
  play_pattern_timed [:e3, :a2], 2, release: 0.3
  play_pattern_timed [:c3, :d3], 0.5, release: 0.5
end


define :s4 do
  play_pattern_timed [:b2, :e2], 1, release: 1
  play_pattern_timed [:g2, :a2], 0.5, release: 0.5
end


define :s5 do
  play_pattern_timed [:d3, :g2], 3, release: 1
  play_pattern_timed [:c3, :b2], 0.5, release: 0.3
  play_pattern_timed [:d3, :g2], 2, release: 0.6
  play_pattern_timed [:c3, :b2], 0.5, release: 0.3
end


define :s6 do
  play_pattern_timed [:a2, :d2], 1, release: 1
  play_pattern_timed [:f2, :g2], 0.5, release: 0.3
end

define :s7 do
  play_pattern_timed [:a2, :e2], 1, release: 1
  play_pattern_timed [:f2, :g2], 0.5, release: 0.5
end

define :s8 do
  play_pattern_timed [:b2], 2, release: 2
  play_pattern_timed [:g2, :a2], 0.5, release: 0.5
end

define :s9 do
  play_pattern_timed [:d3, :g2], 3, release: 2
  play_pattern_timed [:b2, :c3, :b2, :g2], 1.5, release: 0.5
end

define :s10 do
  play_pattern_timed [:a2, :c2, :f2, :g2, :a2, :c2, :f2, :a2], [1,1,0.5,0.5,1,1,0.5,0.5], release:  1
  play_pattern_timed [:g2, :c2, :e2, :f2, :g2, :c2, :e2, :g2], [1,1,0.5,0.5,1,1,0.5,0.5], release:  1
  play_pattern_timed [:f2, :a1, :d2, :e2, :f2, :a1, :d2, :f2], [1,1,0.5,0.5,1,1,0.5,0.5], release:  1
  play_pattern_timed [:e2, :a1, :c2, :d2, :e2, :a1, :c2, :d2], [1,1,0.5,0.5,1,1,0.5,0.5], release:  1
  play_pattern_timed [:c2, :f1, :a1, :b1, :c2, :f1, :a1, :b1], [1,1,0.5,0.5,1,1,0.5,0.5], release:  1
  play_pattern_timed [:c2, :a1, :c2, :b1, :g1, :b1 ], [1,1,1,1,1,1], release:  1
  play_pattern_timed [:a1, :e1, :f1, :g1, :a1, :e1, :f1, :g1], [1,1,0.5,0.5,1,1,0.5,0.5], release:  1
  play_pattern_timed [:a1, :e1, :f1, :g1, :a1, :e1, :f1, :g1], [1,1,0.5,0.5,1,1,0.5,0.5], release:  1
end

define :s11 do
  play_pattern_timed [:a2, :c2, :f2, :g2, :a2, :c2, :f2, :a2], [1,1,0.5,0.5,1,1,0.5,0.5], release:  1
  play_pattern_timed [:g2, :c2, :e2, :f2, :g2, :c2, :e2, :g2], [1,1,0.5,0.5,1,1,0.5,0.5], release:  1
  play_pattern_timed [:f2, :a1, :d2, :e2, :f2, :a1, :d2, :f2], [1,1,0.5,0.5,1,1,0.5,0.5], release:  1
  play_pattern_timed [:e2, :a1, :c2, :d2, :e2, :a1, :c2, :d2], [1,1,0.5,0.5,1,1,0.5,0.5], release:  1
  play_pattern_timed [:c2, :f1, :a1, :b1, :c2, :f1, :a1, :b1], [1,1,0.5,0.5,1,1,0.5,0.5], release:  1
  play_pattern_timed [:c2, :a1, :c2, :b1, :g1, :b1 ], [1,1,1,1,1,1], release:  1
  play_pattern_timed [:a1, :e1, :f1, :g1, :a1, :e1, :f1, :g1], [1,1,0.5,0.5,1,1,0.5,0.5], release:  1
  play_pattern_timed [:a2, :e2, :f2, :g2, :a2, :e2, :f2, :g2], [1,1,0.5,0.5,1,1,0.5,0.5], release:  1
  play_pattern_timed [:a3, :e3, :f3, :g3, :a3, :e3, :f3, :g3], [1,1,0.5,0.5,1,1,0.5,0.5], release:  1
  play_pattern_timed [:a3, :e3, :f3, :g3, ], [1,1,0.5,0.5], release:  1
  play :a3, release: 5
end


4.times do
  s1
end
4.times do
  s2
end
s3
4.times do
  s4
end
s5
4.times do
  s6
end
s3
4.times do
  s4
end
s5
4.times do
  s7
end
s3
4.times do
  s8
end
s9
4.times do
  s7
end
s10
s11

