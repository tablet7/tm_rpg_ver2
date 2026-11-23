#> tm_rpg:enemy/boss/guardian_wolf/v/arm_l

# 見た目 arm_l の姿勢。guardian_wolf/vis_tick から呼ばれる。行動ごとの関数は、キーフレームのtickだけ transformation を書く
# @s ＝ 見た目（item_display）

# 待機: 始めに休みの姿勢へ戻す（歩いていないとき）。歩いているあいだは歩きのキーフレームをくり返す（#wt ＝ 歩きの周期の中のtick）
execute if score #move boss_tmp matches 1 if score #t boss_tmp matches 1 if score #walk boss_tmp matches 0 run data merge entity @s {transformation:{translation:[1.6f,1.55f,2.4f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:6}
execute if score #walkstop boss_tmp matches 1 run data merge entity @s {transformation:{translation:[1.6f,1.55f,2.4f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:6}
execute if score #walk boss_tmp matches 1 if score #wt boss_tmp matches 0 run data merge entity @s {transformation:{translation:[1.6f,1.6496f,2.667f],left_rotation:[-0.1045f,0f,0f,0.9945f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:2}
execute if score #walk boss_tmp matches 1 if score #wt boss_tmp matches 2 run data merge entity @s {transformation:{translation:[1.6f,1.65f,2.4f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #walk boss_tmp matches 1 if score #wt boss_tmp matches 5 run data merge entity @s {transformation:{translation:[1.6f,1.6018f,2.2176f],left_rotation:[0.0698f,0f,0f,0.9976f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:2}
execute if score #walk boss_tmp matches 1 if score #wt boss_tmp matches 7 run data merge entity @s {transformation:{translation:[1.6f,1.5771f,1.9463f],left_rotation:[0.1736f,0f,0f,0.9848f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #walk boss_tmp matches 1 if score #wt boss_tmp matches 10 run data merge entity @s {transformation:{translation:[1.6f,1.5872f,2.1264f],left_rotation:[0.1045f,0f,0f,0.9945f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:2}
execute if score #walk boss_tmp matches 1 if score #wt boss_tmp matches 12 run data merge entity @s {transformation:{translation:[1.6f,1.65f,2.4f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #walk boss_tmp matches 1 if score #wt boss_tmp matches 15 run data merge entity @s {transformation:{translation:[1.6f,1.6435f,2.5795f],left_rotation:[-0.0698f,0f,0f,0.9976f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:2}
execute if score #walk boss_tmp matches 1 if score #wt boss_tmp matches 17 run data merge entity @s {transformation:{translation:[1.6f,1.6797f,2.8356f],left_rotation:[-0.1736f,0f,0f,0.9848f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #move boss_tmp matches 2 run return run function tm_rpg:enemy/boss/guardian_wolf/move/swipe/v_arm_l
execute if score #move boss_tmp matches 3 run return run function tm_rpg:enemy/boss/guardian_wolf/move/dash/v_arm_l
execute if score #move boss_tmp matches 4 run return run function tm_rpg:enemy/boss/guardian_wolf/move/spin/v_arm_l
execute if score #move boss_tmp matches 5 run return run function tm_rpg:enemy/boss/guardian_wolf/move/leap/v_arm_l
execute if score #move boss_tmp matches 6 run return run function tm_rpg:enemy/boss/guardian_wolf/move/roar/v_arm_l
execute if score #move boss_tmp matches 7 run return run function tm_rpg:enemy/boss/guardian_wolf/move/death/v_arm_l
