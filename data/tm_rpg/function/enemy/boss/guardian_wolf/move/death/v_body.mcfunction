#> tm_rpg:enemy/boss/guardian_wolf/move/death/v_body

# 行動 death の見た目 body の姿勢。guardian_wolf/v/body から呼ばれる
# @s ＝ 見た目（item_display）

execute if score #t boss_tmp matches 1 run return run data merge entity @s {transformation:{translation:[0f,2.1125f,0.2f],left_rotation:[0f,0f,0.0872f,0.9962f],right_rotation:[0f,0f,0f,1f],scale:[2.6f,2.6f,2.6f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 4 run return run data merge entity @s {transformation:{translation:[0f,2.025f,0.2f],left_rotation:[0f,0f,0.1736f,0.9848f],right_rotation:[0f,0f,0f,1f],scale:[2.6f,2.6f,2.6f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 7 run return run data merge entity @s {transformation:{translation:[0f,1.9375f,0.2f],left_rotation:[0f,0f,0.2588f,0.9659f],right_rotation:[0f,0f,0f,1f],scale:[2.6f,2.6f,2.6f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 10 run return run data merge entity @s {transformation:{translation:[0f,1.85f,0.2f],left_rotation:[0f,0f,0.342f,0.9397f],right_rotation:[0f,0f,0f,1f],scale:[2.6f,2.6f,2.6f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 13 run return run data merge entity @s {transformation:{translation:[0f,1.7625f,0.2f],left_rotation:[0f,0f,0.4226f,0.9063f],right_rotation:[0f,0f,0f,1f],scale:[2.6f,2.6f,2.6f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 16 run return run data merge entity @s {transformation:{translation:[0f,1.675f,0.2f],left_rotation:[0f,0f,0.5f,0.866f],right_rotation:[0f,0f,0f,1f],scale:[2.6f,2.6f,2.6f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 19 run return run data merge entity @s {transformation:{translation:[0f,1.5875f,0.2f],left_rotation:[0f,0f,0.5736f,0.8192f],right_rotation:[0f,0f,0f,1f],scale:[2.6f,2.6f,2.6f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 22 run return run data merge entity @s {transformation:{translation:[0f,1.5f,0.2f],left_rotation:[0f,0f,0.6428f,0.766f],right_rotation:[0f,0f,0f,1f],scale:[2.6f,2.6f,2.6f]},start_interpolation:0,interpolation_duration:3}
