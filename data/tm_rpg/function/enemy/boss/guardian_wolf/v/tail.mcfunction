#> tm_rpg:enemy/boss/guardian_wolf/v/tail

# 見た目 tail の姿勢。guardian_wolf/vis_tick から呼ばれる。行動ごとの関数は、キーフレームのtickだけ transformation を書く
# @s ＝ 見た目（item_display）

# 待機: 始めに休みの姿勢へ戻す（歩いていないとき）。歩いているあいだは歩きのキーフレームをくり返す（#wt ＝ 歩きの周期の中のtick）
execute if score #move boss_tmp matches 1 if score #t boss_tmp matches 1 if score #walk boss_tmp matches 0 run data merge entity @s {transformation:{translation:[0f,2f,-4.4f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:6}
execute if score #walkstop boss_tmp matches 1 run data merge entity @s {transformation:{translation:[0f,2f,-4.4f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:6}
execute if score #walk boss_tmp matches 1 if score #wt boss_tmp matches 0 run data merge entity @s {transformation:{translation:[-0.1506f,2.04f,-4.3937f],left_rotation:[0f,0.0419f,0f,0.9991f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:2}
execute if score #walk boss_tmp matches 1 if score #wt boss_tmp matches 2 run data merge entity @s {transformation:{translation:[0f,2.1f,-4.4f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #walk boss_tmp matches 1 if score #wt boss_tmp matches 5 run data merge entity @s {transformation:{translation:[0.1005f,2.06f,-4.3972f],left_rotation:[0f,-0.0279f,0f,0.9996f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:2}
execute if score #walk boss_tmp matches 1 if score #wt boss_tmp matches 7 run data merge entity @s {transformation:{translation:[0.2505f,2f,-4.3825f],left_rotation:[0f,-0.0698f,0f,0.9976f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #walk boss_tmp matches 1 if score #wt boss_tmp matches 10 run data merge entity @s {transformation:{translation:[0.1506f,2.04f,-4.3937f],left_rotation:[0f,-0.0419f,0f,0.9991f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:2}
execute if score #walk boss_tmp matches 1 if score #wt boss_tmp matches 12 run data merge entity @s {transformation:{translation:[0f,2.1f,-4.4f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #walk boss_tmp matches 1 if score #wt boss_tmp matches 15 run data merge entity @s {transformation:{translation:[-0.1005f,2.06f,-4.3972f],left_rotation:[0f,0.0279f,0f,0.9996f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:2}
execute if score #walk boss_tmp matches 1 if score #wt boss_tmp matches 17 run data merge entity @s {transformation:{translation:[-0.2505f,2f,-4.3825f],left_rotation:[0f,0.0698f,0f,0.9976f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #move boss_tmp matches 2 run return run function tm_rpg:enemy/boss/guardian_wolf/move/swipe/v_tail
execute if score #move boss_tmp matches 3 run return run function tm_rpg:enemy/boss/guardian_wolf/move/dash/v_tail
execute if score #move boss_tmp matches 4 run return run function tm_rpg:enemy/boss/guardian_wolf/move/spin/v_tail
execute if score #move boss_tmp matches 5 run return run function tm_rpg:enemy/boss/guardian_wolf/move/leap/v_tail
execute if score #move boss_tmp matches 6 run return run function tm_rpg:enemy/boss/guardian_wolf/move/roar/v_tail
execute if score #move boss_tmp matches 7 run return run function tm_rpg:enemy/boss/guardian_wolf/move/death/v_tail
