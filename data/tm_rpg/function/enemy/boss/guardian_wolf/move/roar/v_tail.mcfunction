#> tm_rpg:enemy/boss/guardian_wolf/move/roar/v_tail

# 行動 roar の見た目 tail の姿勢。guardian_wolf/v/tail から呼ばれる
# @s ＝ 見た目（item_display）

execute if score #t boss_tmp matches 1 run return run data merge entity @s {transformation:{translation:[0f,1.3915f,-4.188f],left_rotation:[-0.1219f,0f,0f,0.9926f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 4 run return run data merge entity @s {transformation:{translation:[0f,0.8531f,-3.87f],left_rotation:[-0.2419f,0f,0f,0.9703f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 7 run return run data merge entity @s {transformation:{translation:[0f,0.4058f,-3.4659f],left_rotation:[-0.3584f,0f,0f,0.9336f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 40 run return run data merge entity @s {transformation:{translation:[0f,0.6622f,-3.7174f],left_rotation:[-0.289f,0f,0f,0.9573f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:2}
execute if score #t boss_tmp matches 42 run return run data merge entity @s {transformation:{translation:[0f,1.1121f,-4.0411f],left_rotation:[-0.1822f,0f,0f,0.9832f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 45 run return run data merge entity @s {transformation:{translation:[0f,1.6279f,-4.2865f],left_rotation:[-0.0732f,0f,0f,0.9973f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 48 run return run data merge entity @s {transformation:{translation:[0f,2f,-4.4f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:2}
