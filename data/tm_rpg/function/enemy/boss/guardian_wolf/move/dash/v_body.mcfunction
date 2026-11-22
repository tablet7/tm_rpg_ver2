#> tm_rpg:enemy/boss/guardian_wolf/move/dash/v_body

# 行動 dash の見た目 body の姿勢。guardian_wolf/v/body から呼ばれる
# @s ＝ 見た目（item_display）

execute if score #t boss_tmp matches 1 run return run data merge entity @s {transformation:{translation:[0f,2.2f,0.2f],left_rotation:[-0.0175f,0f,0f,0.9999f],right_rotation:[0f,0f,0f,1f],scale:[2.6f,2.6f,2.6f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 4 run return run data merge entity @s {transformation:{translation:[0f,2.2f,0.2f],left_rotation:[-0.0349f,0f,0f,0.9994f],right_rotation:[0f,0f,0f,1f],scale:[2.6f,2.6f,2.6f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 7 run return run data merge entity @s {transformation:{translation:[0f,2.2f,0.2f],left_rotation:[-0.0523f,0f,0f,0.9986f],right_rotation:[0f,0f,0f,1f],scale:[2.6f,2.6f,2.6f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 28 run return run data merge entity @s {transformation:{translation:[0f,2.2f,0.2f],left_rotation:[0.0698f,0f,0f,0.9976f],right_rotation:[0f,0f,0f,1f],scale:[2.6f,2.6f,2.6f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 45 run return run data merge entity @s {transformation:{translation:[0f,2.2f,0.2f],left_rotation:[0.0349f,0f,0f,0.9994f],right_rotation:[0f,0f,0f,1f],scale:[2.6f,2.6f,2.6f]},start_interpolation:0,interpolation_duration:1}
execute if score #t boss_tmp matches 46 run return run data merge entity @s {transformation:{translation:[0f,2.2f,0.2f],left_rotation:[-0.0698f,0f,0f,0.9976f],right_rotation:[0f,0f,0f,1f],scale:[2.6f,2.6f,2.6f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 62 run return run data merge entity @s {transformation:{translation:[0f,2.2f,0.2f],left_rotation:[0.0262f,0f,0f,0.9997f],right_rotation:[0f,0f,0f,1f],scale:[2.6f,2.6f,2.6f]},start_interpolation:0,interpolation_duration:2}
execute if score #t boss_tmp matches 64 run return run data merge entity @s {transformation:{translation:[0f,2.2f,0.2f],left_rotation:[0.1219f,0f,0f,0.9926f],right_rotation:[0f,0f,0f,1f],scale:[2.6f,2.6f,2.6f]},start_interpolation:0,interpolation_duration:2}
execute if score #t boss_tmp matches 66 run return run data merge entity @s {transformation:{translation:[0f,2.2f,0.2f],left_rotation:[0.1016f,0f,0f,0.9948f],right_rotation:[0f,0f,0f,1f],scale:[2.6f,2.6f,2.6f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 69 run return run data merge entity @s {transformation:{translation:[0f,2.2f,0.2f],left_rotation:[0.0814f,0f,0f,0.9967f],right_rotation:[0f,0f,0f,1f],scale:[2.6f,2.6f,2.6f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 72 run return run data merge entity @s {transformation:{translation:[0f,2.2f,0.2f],left_rotation:[0.0611f,0f,0f,0.9981f],right_rotation:[0f,0f,0f,1f],scale:[2.6f,2.6f,2.6f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 75 run return run data merge entity @s {transformation:{translation:[0f,2.2f,0.2f],left_rotation:[0.0407f,0f,0f,0.9992f],right_rotation:[0f,0f,0f,1f],scale:[2.6f,2.6f,2.6f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 78 run return run data merge entity @s {transformation:{translation:[0f,2.2f,0.2f],left_rotation:[0.0204f,0f,0f,0.9998f],right_rotation:[0f,0f,0f,1f],scale:[2.6f,2.6f,2.6f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 81 run return run data merge entity @s {transformation:{translation:[0f,2.2f,0.2f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[2.6f,2.6f,2.6f]},start_interpolation:0,interpolation_duration:3}
