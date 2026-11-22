#> tm_rpg:enemy/boss/guardian_wolf/v/head

# 見た目 head の姿勢。guardian_wolf/vis_tick から呼ばれる。行動ごとの関数は、キーフレームのtickだけ transformation を書く
# @s ＝ 見た目（item_display）

# 待機: 始めに休みの姿勢へ戻す（歩いていないとき）。歩いているあいだは歩きのキーフレームをくり返す（#wt ＝ 歩きの周期の中のtick）
execute if score #move boss_tmp matches 1 if score #t boss_tmp matches 1 if score #walk boss_tmp matches 0 run data merge entity @s {transformation:{translation:[0f,3.7f,4.1f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:6}
execute if score #walkstop boss_tmp matches 1 run data merge entity @s {transformation:{translation:[0f,3.7f,4.1f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:6}
execute if score #walk boss_tmp matches 1 if score #wt boss_tmp matches 0 run data merge entity @s {transformation:{translation:[0f,3.699f,4.1119f],left_rotation:[0.0157f,0f,0f,0.9999f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:2}
execute if score #walk boss_tmp matches 1 if score #wt boss_tmp matches 2 run data merge entity @s {transformation:{translation:[0f,3.8f,4.1f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #walk boss_tmp matches 1 if score #wt boss_tmp matches 5 run data merge entity @s {transformation:{translation:[0f,3.7871f,4.0913f],left_rotation:[-0.0105f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:2}
execute if score #walk boss_tmp matches 1 if score #wt boss_tmp matches 7 run data merge entity @s {transformation:{translation:[0f,3.7675f,4.0773f],left_rotation:[-0.0262f,0f,0f,0.9997f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #walk boss_tmp matches 1 if score #wt boss_tmp matches 10 run data merge entity @s {transformation:{translation:[0f,3.7806f,4.0868f],left_rotation:[-0.0157f,0f,0f,0.9999f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:2}
execute if score #walk boss_tmp matches 1 if score #wt boss_tmp matches 12 run data merge entity @s {transformation:{translation:[0f,3.8f,4.1f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #walk boss_tmp matches 1 if score #wt boss_tmp matches 15 run data merge entity @s {transformation:{translation:[0f,3.7327f,4.1081f],left_rotation:[0.0105f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:2}
execute if score #walk boss_tmp matches 1 if score #wt boss_tmp matches 17 run data merge entity @s {transformation:{translation:[0f,3.6314f,4.1192f],left_rotation:[0.0262f,0f,0f,0.9997f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #move boss_tmp matches 2 run return run function tm_rpg:enemy/boss/guardian_wolf/move/swipe/v_head
execute if score #move boss_tmp matches 3 run return run function tm_rpg:enemy/boss/guardian_wolf/move/dash/v_head
execute if score #move boss_tmp matches 4 run return run function tm_rpg:enemy/boss/guardian_wolf/move/spin/v_head
execute if score #move boss_tmp matches 5 run return run function tm_rpg:enemy/boss/guardian_wolf/move/leap/v_head
execute if score #move boss_tmp matches 6 run return run function tm_rpg:enemy/boss/guardian_wolf/move/roar/v_head
execute if score #move boss_tmp matches 7 run return run function tm_rpg:enemy/boss/guardian_wolf/move/death/v_head
