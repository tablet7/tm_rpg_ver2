#> tm_rpg:enemy/boss/guardian_wolf/move/swipe/v_tail

# 行動 swipe の見た目 tail の姿勢。guardian_wolf/v/tail から呼ばれる
# @s ＝ 見た目（item_display）

execute if score #t boss_tmp matches 1 run return run data merge entity @s {transformation:{translation:[-0.0707f,1.8251f,-4.3877f],left_rotation:[-0.019f,0.0196f,-0.0004f,0.9996f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 4 run return run data merge entity @s {transformation:{translation:[-0.1412f,1.651f,-4.3659f],left_rotation:[-0.038f,0.0392f,-0.0015f,0.9985f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 7 run return run data merge entity @s {transformation:{translation:[-0.1882f,1.5357f,-4.3462f],left_rotation:[-0.0507f,0.0523f,-0.0027f,0.9973f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:2}
execute if score #t boss_tmp matches 9 run return run data merge entity @s {transformation:{translation:[-0.2583f,1.3643f,-4.309f],left_rotation:[-0.0696f,0.0718f,-0.005f,0.995f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 12 run return run data merge entity @s {transformation:{translation:[-0.328f,1.3659f,-4.2976f],left_rotation:[-0.0695f,0.0913f,-0.0064f,0.9934f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 15 run return run data merge entity @s {transformation:{translation:[-0.3973f,1.3679f,-4.2834f],left_rotation:[-0.0693f,0.1108f,-0.0077f,0.9914f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 18 run return run data merge entity @s {transformation:{translation:[0.7544f,2.8719f,-4.2538f],left_rotation:[0.0781f,-0.0091f,0.1107f,0.9907f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 40 run return run data merge entity @s {transformation:{translation:[0.6083f,2.7139f,-4.3106f],left_rotation:[0.0672f,-0.0058f,0.0853f,0.9941f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:2}
execute if score #t boss_tmp matches 42 run return run data merge entity @s {transformation:{translation:[0.3834f,2.4607f,-4.3715f],left_rotation:[0.0461f,-0.0023f,0.05f,0.9977f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 45 run return run data merge entity @s {transformation:{translation:[0.1538f,2.1895f,-4.4003f],left_rotation:[0.02f,-0.0004f,0.0185f,0.9996f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 48 run return run data merge entity @s {transformation:{translation:[0f,2f,-4.4f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:2}
