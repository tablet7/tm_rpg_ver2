#> tm_rpg:enemy/boss/guardian_wolf/move/roar/v_head

# 行動 roar の見た目 head の姿勢。guardian_wolf/v/head から呼ばれる
# @s ＝ 見た目（item_display）

execute if score #t boss_tmp matches 1 run return run data merge entity @s {transformation:{translation:[0f,4.2801f,3.8159f],left_rotation:[-0.1651f,0f,0f,0.9863f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 4 run return run data merge entity @s {transformation:{translation:[0f,4.7667f,3.3998f],left_rotation:[-0.3256f,0f,0f,0.9455f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 7 run return run data merge entity @s {transformation:{translation:[0f,5.1247f,2.887f],left_rotation:[-0.4772f,0f,0f,0.8788f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 40 run return run data merge entity @s {transformation:{translation:[0f,4.9269f,3.2039f],left_rotation:[-0.3875f,0f,0f,0.9219f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:2}
execute if score #t boss_tmp matches 42 run return run data merge entity @s {transformation:{translation:[0f,4.5376f,3.6224f],left_rotation:[-0.2462f,0f,0f,0.9692f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 45 run return run data merge entity @s {transformation:{translation:[0f,4.057f,3.9469f],left_rotation:[-0.0993f,0f,0f,0.9951f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 48 run return run data merge entity @s {transformation:{translation:[0f,3.7f,4.1f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:2}
