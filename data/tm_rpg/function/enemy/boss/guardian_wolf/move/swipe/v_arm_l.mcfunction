#> tm_rpg:enemy/boss/guardian_wolf/move/swipe/v_arm_l

# 行動 swipe の見た目 arm_l の姿勢。guardian_wolf/v/arm_l から呼ばれる
# @s ＝ 見た目（item_display）

execute if score #t boss_tmp matches 1 run return run data merge entity @s {transformation:{translation:[1.4757f,1.8621f,2.9977f],left_rotation:[-0.2539f,-0.0121f,-0.046f,0.966f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 4 run return run data merge entity @s {transformation:{translation:[1.3513f,2.4587f,3.3895f],left_rotation:[-0.4895f,-0.0467f,-0.0828f,0.8668f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 7 run return run data merge entity @s {transformation:{translation:[1.2687f,2.9441f,3.4735f],left_rotation:[-0.6279f,-0.0801f,-0.098f,0.7679f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:2}
execute if score #t boss_tmp matches 9 run return run data merge entity @s {transformation:{translation:[1.1463f,3.665f,3.3038f],left_rotation:[-0.7967f,-0.1405f,-0.1021f,0.5789f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 18 run return run data merge entity @s {transformation:{translation:[1.2612f,1.7556f,3.4504f],left_rotation:[-0.1106f,-0.4186f,0.3361f,0.8364f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 40 run return run data merge entity @s {transformation:{translation:[1.4673f,1.6964f,3.214f],left_rotation:[-0.0701f,-0.3426f,0.2898f,0.8909f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:2}
execute if score #t boss_tmp matches 42 run return run data merge entity @s {transformation:{translation:[1.6369f,1.6117f,2.854f],left_rotation:[-0.025f,-0.2186f,0.1981f,0.9552f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 45 run return run data merge entity @s {transformation:{translation:[1.653f,1.556f,2.5476f],left_rotation:[-0.002f,-0.0878f,0.0846f,0.9925f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 48 run return run data merge entity @s {transformation:{translation:[1.6f,1.55f,2.4f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:2}
