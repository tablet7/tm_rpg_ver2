#> tm_rpg:enemy/boss/guardian_wolf/move/spin/v_tail

# 行動 spin の見た目 tail の姿勢。guardian_wolf/v/tail から呼ばれる
# @s ＝ 見た目（item_display）

execute if score #t boss_tmp matches 1 run return run data merge entity @s {transformation:{translation:[0f,1.6476f,-4.265f],left_rotation:[-0.0727f,0f,0f,0.9974f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 4 run return run data merge entity @s {transformation:{translation:[0f,1.3174f,-4.0949f],left_rotation:[-0.1449f,0f,0f,0.9894f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 7 run return run data merge entity @s {transformation:{translation:[0f,1.0142f,-3.8933f],left_rotation:[-0.2164f,0f,0f,0.9763f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 20 run return run data merge entity @s {transformation:{translation:[-0.367f,1.1326f,-3.9695f],left_rotation:[-0.1722f,0.1285f,0.0227f,0.9764f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:2}
execute if score #t boss_tmp matches 22 run return run data merge entity @s {transformation:{translation:[-0.7658f,1.2614f,-3.9264f],left_rotation:[-0.1261f,0.2566f,0.0338f,0.9577f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:2}
execute if score #t boss_tmp matches 32 run return run data merge entity @s {transformation:{translation:[-0.5145f,1.2283f,-4.0135f],left_rotation:[-0.1392f,0.1719f,0.0245f,0.9749f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:1}
execute if score #t boss_tmp matches 33 run return run data merge entity @s {transformation:{translation:[0.2462f,1.2144f,-3.9963f],left_rotation:[-0.173f,-0.0858f,-0.0151f,0.9811f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 36 run return run data merge entity @s {transformation:{translation:[0.1725f,1.493f,-4.1748f],left_rotation:[-0.1087f,-0.0542f,-0.0059f,0.9926f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 39 run return run data merge entity @s {transformation:{translation:[0.1099f,1.6901f,-4.2766f],left_rotation:[-0.0654f,-0.0326f,-0.0021f,0.9973f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:2}
execute if score #t boss_tmp matches 41 run return run data merge entity @s {transformation:{translation:[0f,2f,-4.4f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
