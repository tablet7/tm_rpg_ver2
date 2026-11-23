#> tm_rpg:enemy/boss/guardian_wolf/move/swipe/v_head

# 行動 swipe の見た目 head の姿勢。guardian_wolf/v/head から呼ばれる
# @s ＝ 見た目（item_display）

execute if score #t boss_tmp matches 1 run return run data merge entity @s {transformation:{translation:[0f,3.908f,4.0172f],left_rotation:[-0.0428f,0f,0f,0.9991f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 4 run return run data merge entity @s {transformation:{translation:[0f,4.1105f,3.9215f],left_rotation:[-0.0856f,0f,0f,0.9963f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 7 run return run data merge entity @s {transformation:{translation:[0f,4.242f,3.8507f],left_rotation:[-0.114f,0f,0f,0.9935f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:2}
execute if score #t boss_tmp matches 9 run return run data merge entity @s {transformation:{translation:[0f,4.4333f,3.7344f],left_rotation:[-0.1564f,0f,0f,0.9877f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 12 run return run data merge entity @s {transformation:{translation:[-0.0738f,4.3124f,3.8079f],left_rotation:[-0.1045f,-0.0291f,0.001f,0.9941f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 15 run return run data merge entity @s {transformation:{translation:[-0.1524f,4.1836f,3.8639f],left_rotation:[-0.0522f,-0.0579f,0.0051f,0.9969f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 18 run return run data merge entity @s {transformation:{translation:[-1.503f,2.6117f,4.0396f],left_rotation:[0.1673f,-0.2164f,0.1065f,0.9559f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 40 run return run data merge entity @s {transformation:{translation:[-1.2142f,2.8408f,4.1208f],left_rotation:[0.1355f,-0.1741f,0.0822f,0.9719f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:2}
execute if score #t boss_tmp matches 42 run return run data merge entity @s {transformation:{translation:[-0.7636f,3.1756f,4.1782f],left_rotation:[0.0859f,-0.1093f,0.0485f,0.9891f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 45 run return run data merge entity @s {transformation:{translation:[-0.3043f,3.496f,4.1571f],left_rotation:[0.0347f,-0.0437f,0.0182f,0.9983f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 48 run return run data merge entity @s {transformation:{translation:[0f,3.7f,4.1f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:2}
