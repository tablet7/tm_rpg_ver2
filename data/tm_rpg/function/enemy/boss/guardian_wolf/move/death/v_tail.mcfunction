#> tm_rpg:enemy/boss/guardian_wolf/move/death/v_tail

# 行動 death の見た目 tail の姿勢。guardian_wolf/v/tail から呼ばれる
# @s ＝ 見た目（item_display）

execute if score #t boss_tmp matches 1 run return run data merge entity @s {transformation:{translation:[0.0279f,1.9544f,-4.417f],left_rotation:[0.0109f,0.0009f,0.0872f,0.9961f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 4 run return run data merge entity @s {transformation:{translation:[0.0413f,1.9116f,-4.4332f],left_rotation:[0.0215f,0.0038f,0.1736f,0.9846f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 7 run return run data merge entity @s {transformation:{translation:[0.0403f,1.8677f,-4.4485f],left_rotation:[0.0316f,0.0085f,0.2587f,0.9654f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 10 run return run data merge entity @s {transformation:{translation:[0.0258f,1.8193f,-4.4629f],left_rotation:[0.041f,0.0149f,0.3417f,0.9388f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 13 run return run data merge entity @s {transformation:{translation:[-0.0005f,1.763f,-4.4764f],left_rotation:[0.0494f,0.023f,0.422f,0.905f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 16 run return run data merge entity @s {transformation:{translation:[-0.0362f,1.6959f,-4.489f],left_rotation:[0.0566f,0.0327f,0.4989f,0.8642f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 19 run return run data merge entity @s {transformation:{translation:[-0.0781f,1.6159f,-4.5007f],left_rotation:[0.0625f,0.0437f,0.5719f,0.8168f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
execute if score #t boss_tmp matches 22 run return run data merge entity @s {transformation:{translation:[-0.1228f,1.5217f,-4.5116f],left_rotation:[0.0668f,0.056f,0.6403f,0.7631f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]},start_interpolation:0,interpolation_duration:3}
