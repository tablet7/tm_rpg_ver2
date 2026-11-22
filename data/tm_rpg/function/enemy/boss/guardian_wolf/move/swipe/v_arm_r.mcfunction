#> tm_rpg:enemy/boss/guardian_wolf/move/swipe/v_arm_r

# 行動 swipe の見た目 arm_r の姿勢。guardian_wolf/v/arm_r から呼ばれる
# @s ＝ 見た目（item_display）

execute if score #t boss_tmp matches 1 run return run data merge entity @s {transformation:{translation:[-1.6f,1.6342f,2.4232f],left_rotation:[-0.019f,0f,0f,0.9998f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 4 run return run data merge entity @s {transformation:{translation:[-1.6f,1.7193f,2.4431f],left_rotation:[-0.0381f,0f,0f,0.9993f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 7 run return run data merge entity @s {transformation:{translation:[-1.6f,1.7764f,2.4546f],left_rotation:[-0.0508f,0f,0f,0.9987f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:2}
execute if score #t boss_tmp matches 9 run return run data merge entity @s {transformation:{translation:[-1.6f,1.8625f,2.4691f],left_rotation:[-0.0698f,0f,0f,0.9976f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 18 run return run data merge entity @s {transformation:{translation:[-1.9205f,0.8447f,1.7156f],left_rotation:[0.0919f,-0.1384f,0.0995f,0.9811f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 40 run return run data merge entity @s {transformation:{translation:[-1.8823f,0.9789f,1.8699f],left_rotation:[0.0757f,-0.1097f,0.0779f,0.988f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:2}
execute if score #t boss_tmp matches 42 run return run data merge entity @s {transformation:{translation:[-1.799f,1.1874f,2.087f],left_rotation:[0.0493f,-0.0675f,0.0469f,0.9954f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 45 run return run data merge entity @s {transformation:{translation:[-1.6877f,1.403f,2.2831f],left_rotation:[0.0205f,-0.0265f,0.018f,0.9993f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 48 run return run data merge entity @s {transformation:{translation:[-1.6f,1.55f,2.4f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:2}
