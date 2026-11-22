#> tm_rpg:enemy/boss/guardian_wolf/move/roar/v_body

# 行動 roar の見た目 body の姿勢。guardian_wolf/v/body から呼ばれる
# @s ＝ 見た目（item_display）

execute if score #t boss_tmp matches 1 run return run data merge entity @s {transformation:{translation:[0f,2.2f,0.2f],left_rotation:[-0.0349f,0f,0f,0.9994f],right_rotation:[0f,0f,0f,1f],scale:[2.6f,2.6f,2.6f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 4 run return run data merge entity @s {transformation:{translation:[0f,2.2f,0.2f],left_rotation:[-0.0698f,0f,0f,0.9976f],right_rotation:[0f,0f,0f,1f],scale:[2.6f,2.6f,2.6f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 7 run return run data merge entity @s {transformation:{translation:[0f,2.2f,0.2f],left_rotation:[-0.1045f,0f,0f,0.9945f],right_rotation:[0f,0f,0f,1f],scale:[2.6f,2.6f,2.6f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 40 run return run data merge entity @s {transformation:{translation:[0f,2.2f,0.2f],left_rotation:[-0.0837f,0f,0f,0.9965f],right_rotation:[0f,0f,0f,1f],scale:[2.6f,2.6f,2.6f]},start_interpolation:0,interpolation_duration:2}
execute if score #t boss_tmp matches 42 run return run data merge entity @s {transformation:{translation:[0f,2.2f,0.2f],left_rotation:[-0.0523f,0f,0f,0.9986f],right_rotation:[0f,0f,0f,1f],scale:[2.6f,2.6f,2.6f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 45 run return run data merge entity @s {transformation:{translation:[0f,2.2f,0.2f],left_rotation:[-0.0209f,0f,0f,0.9998f],right_rotation:[0f,0f,0f,1f],scale:[2.6f,2.6f,2.6f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 48 run return run data merge entity @s {transformation:{translation:[0f,2.2f,0.2f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[2.6f,2.6f,2.6f]},start_interpolation:0,interpolation_duration:2}
