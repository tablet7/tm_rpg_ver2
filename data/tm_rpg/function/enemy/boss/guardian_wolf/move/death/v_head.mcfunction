#> tm_rpg:enemy/boss/guardian_wolf/move/death/v_head

# 行動 death の見た目 head の姿勢。guardian_wolf/v/head から呼ばれる
# @s ＝ 見た目（item_display）

execute if score #t boss_tmp matches 1 run return run data merge entity @s {transformation:{translation:[-0.253f,3.5476f,4.1124f],left_rotation:[0.0163f,0.0014f,0.0871f,0.9961f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 4 run return run data merge entity @s {transformation:{translation:[-0.4837f,3.3538f,4.1234f],left_rotation:[0.0322f,0.0057f,0.1736f,0.9843f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 7 run return run data merge entity @s {transformation:{translation:[-0.6853f,3.1245f,4.1329f],left_rotation:[0.0474f,0.0127f,0.2585f,0.9648f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 10 run return run data merge entity @s {transformation:{translation:[-0.8529f,2.8665f,4.1411f],left_rotation:[0.0615f,0.0224f,0.3413f,0.9377f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 13 run return run data merge entity @s {transformation:{translation:[-0.9828f,2.5871f,4.1478f],left_rotation:[0.0741f,0.0345f,0.4212f,0.9033f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 16 run return run data merge entity @s {transformation:{translation:[-1.0727f,2.2943f,4.1531f],left_rotation:[0.0849f,0.049f,0.4976f,0.8619f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 19 run return run data merge entity @s {transformation:{translation:[-1.1223f,1.996f,4.1569f],left_rotation:[0.0936f,0.0655f,0.5698f,0.8138f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 22 run return run data merge entity @s {transformation:{translation:[-1.1324f,1.6997f,4.1592f],left_rotation:[0.1f,0.0839f,0.6373f,0.7595f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
