#> tm_rpg:enemy/boss/guardian_wolf/move/spin/v_head

# 行動 spin の見た目 head の姿勢。guardian_wolf/v/head から呼ばれる
# @s ＝ 見た目（item_display）

execute if score #t boss_tmp matches 1 run return run data merge entity @s {transformation:{translation:[0f,3.5237f,4.1211f],left_rotation:[0.0291f,0f,0f,0.9996f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 4 run return run data merge entity @s {transformation:{translation:[0f,3.3464f,4.1376f],left_rotation:[0.0581f,0f,0f,0.9983f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 7 run return run data merge entity @s {transformation:{translation:[0f,3.1682f,4.1497f],left_rotation:[0.0872f,0f,0f,0.9962f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 33 run return run data merge entity @s {transformation:{translation:[0f,3.314f,4.1402f],left_rotation:[0.0634f,0f,0f,0.998f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 36 run return run data merge entity @s {transformation:{translation:[0f,3.4594f,4.1276f],left_rotation:[0.0397f,0f,0f,0.9992f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 39 run return run data merge entity @s {transformation:{translation:[0f,3.5559f,4.1176f],left_rotation:[0.0238f,0f,0f,0.9997f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:2}
execute if score #t boss_tmp matches 41 run return run data merge entity @s {transformation:{translation:[0f,3.7f,4.1f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
