#> tm_rpg:enemy/boss/guardian_wolf/move/spin/v_body

# 行動 spin の見た目 body の姿勢。guardian_wolf/v/body から呼ばれる
# @s ＝ 見た目（item_display）

execute if score #t boss_tmp matches 1 run return run data merge entity @s {transformation:{translation:[0f,2.1f,0.2f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[2.6f,2.6f,2.6f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 4 run return run data merge entity @s {transformation:{translation:[0f,2f,0.2f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[2.6f,2.6f,2.6f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 7 run return run data merge entity @s {transformation:{translation:[0f,1.9f,0.2f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[2.6f,2.6f,2.6f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 33 run return run data merge entity @s {transformation:{translation:[0f,1.9818f,0.2f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[2.6f,2.6f,2.6f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 36 run return run data merge entity @s {transformation:{translation:[0f,2.0636f,0.2f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[2.6f,2.6f,2.6f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 39 run return run data merge entity @s {transformation:{translation:[0f,2.1182f,0.2f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[2.6f,2.6f,2.6f]},start_interpolation:0,interpolation_duration:2}
execute if score #t boss_tmp matches 41 run return run data merge entity @s {transformation:{translation:[0f,2.2f,0.2f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[2.6f,2.6f,2.6f]},start_interpolation:0,interpolation_duration:3}
