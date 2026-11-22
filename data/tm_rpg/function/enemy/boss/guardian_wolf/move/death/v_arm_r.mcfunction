#> tm_rpg:enemy/boss/guardian_wolf/move/death/v_arm_r

# 行動 death の見た目 arm_r の姿勢。guardian_wolf/v/arm_r から呼ばれる
# @s ＝ 見た目（item_display）

execute if score #t boss_tmp matches 1 run return run data merge entity @s {transformation:{translation:[-1.4628f,1.1945f,2.4f],left_rotation:[0f,0f,0.0872f,0.9962f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 4 run return run data merge entity @s {transformation:{translation:[-1.2812f,0.867f,2.4f],left_rotation:[0f,0f,0.1736f,0.9848f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 7 run return run data merge entity @s {transformation:{translation:[-1.0606f,0.5746f,2.4f],left_rotation:[0f,0f,0.2588f,0.9659f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 10 run return run data merge entity @s {transformation:{translation:[-0.8079f,0.3236f,2.4f],left_rotation:[0f,0f,0.342f,0.9397f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 13 run return run data merge entity @s {transformation:{translation:[-0.5305f,0.119f,2.4f],left_rotation:[0f,0f,0.4226f,0.9063f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 16 run return run data merge entity @s {transformation:{translation:[-0.2371f,-0.0356f,2.4f],left_rotation:[0f,0f,0.5f,0.866f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 19 run return run data merge entity @s {transformation:{translation:[0.0636f,-0.1383f,2.4f],left_rotation:[0f,0f,0.5736f,0.8192f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 22 run return run data merge entity @s {transformation:{translation:[0.3623f,-0.1886f,2.4f],left_rotation:[0f,0f,0.6428f,0.766f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
