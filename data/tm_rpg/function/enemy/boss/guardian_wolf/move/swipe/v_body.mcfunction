#> tm_rpg:enemy/boss/guardian_wolf/move/swipe/v_body

# 行動 swipe の見た目 body の姿勢。guardian_wolf/v/body から呼ばれる
# @s ＝ 見た目（item_display）

execute if score #t boss_tmp matches 1 run return run data merge entity @s {transformation:{translation:[0f,2.2f,0.2f],left_rotation:[-0.019f,0f,0f,0.9998f],right_rotation:[0f,0f,0f,1f],scale:[2.6f,2.6f,2.6f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 4 run return run data merge entity @s {transformation:{translation:[0f,2.2f,0.2f],left_rotation:[-0.0381f,0f,0f,0.9993f],right_rotation:[0f,0f,0f,1f],scale:[2.6f,2.6f,2.6f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 7 run return run data merge entity @s {transformation:{translation:[0f,2.2f,0.2f],left_rotation:[-0.0508f,0f,0f,0.9987f],right_rotation:[0f,0f,0f,1f],scale:[2.6f,2.6f,2.6f]},start_interpolation:0,interpolation_duration:2}
execute if score #t boss_tmp matches 9 run return run data merge entity @s {transformation:{translation:[0f,2.2f,0.2f],left_rotation:[-0.0698f,0f,0f,0.9976f],right_rotation:[0f,0f,0f,1f],scale:[2.6f,2.6f,2.6f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 18 run return run data merge entity @s {transformation:{translation:[0f,2.2f,0.2f],left_rotation:[0.0919f,-0.1384f,0.0995f,0.9811f],right_rotation:[0f,0f,0f,1f],scale:[2.6f,2.6f,2.6f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 40 run return run data merge entity @s {transformation:{translation:[0f,2.2f,0.2f],left_rotation:[0.0757f,-0.1097f,0.0779f,0.988f],right_rotation:[0f,0f,0f,1f],scale:[2.6f,2.6f,2.6f]},start_interpolation:0,interpolation_duration:2}
execute if score #t boss_tmp matches 42 run return run data merge entity @s {transformation:{translation:[0f,2.2f,0.2f],left_rotation:[0.0493f,-0.0675f,0.0469f,0.9954f],right_rotation:[0f,0f,0f,1f],scale:[2.6f,2.6f,2.6f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 45 run return run data merge entity @s {transformation:{translation:[0f,2.2f,0.2f],left_rotation:[0.0205f,-0.0265f,0.018f,0.9993f],right_rotation:[0f,0f,0f,1f],scale:[2.6f,2.6f,2.6f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 48 run return run data merge entity @s {transformation:{translation:[0f,2.2f,0.2f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[2.6f,2.6f,2.6f]},start_interpolation:0,interpolation_duration:2}
