#> tm_rpg:enemy/boss/guardian_wolf/move/swipe/hb_arm_l

# 行動 swipe の当たり判定 arm_l の位置（部位の動きに合わせる）。guardian_wolf/hb/arm_l から呼ばれる
# @s ＝ 当たり判定

execute if score #t boss_tmp matches 1 run return run teleport @s ^1.6 ^0.1 ^2.4
execute if score #t boss_tmp matches 2 run return run teleport @s ^1.5 ^0.1 ^2.6
execute if score #t boss_tmp matches 3 run return run teleport @s ^1.5 ^0.3 ^2.8
execute if score #t boss_tmp matches 4 run return run teleport @s ^1.4 ^0.4 ^3
execute if score #t boss_tmp matches 5 run return run teleport @s ^1.4 ^0.6 ^3.2
execute if score #t boss_tmp matches 6 run return run teleport @s ^1.3 ^0.8 ^3.4
execute if score #t boss_tmp matches 7 run return run teleport @s ^1.3 ^1 ^3.5
execute if score #t boss_tmp matches 8 run return run teleport @s ^1.2 ^1.3 ^3.6
execute if score #t boss_tmp matches 9 run return run teleport @s ^1.2 ^1.6 ^3.6
execute if score #t boss_tmp matches 10 run return run teleport @s ^1.1 ^1.8 ^3.6
execute if score #t boss_tmp matches 11 run return run teleport @s ^1.1 ^2.1 ^3.5
execute if score #t boss_tmp matches 12..18 run return run teleport @s ^1 ^2.3 ^3.4
execute if score #t boss_tmp matches 19 run return run teleport @s ^0.9 ^1.3 ^3.7
execute if score #t boss_tmp matches 20 run return run teleport @s ^1.1 ^0.5 ^3.6
execute if score #t boss_tmp matches 21..40 run return run teleport @s ^1.3 ^0.3 ^3.5
execute if score #t boss_tmp matches 41 run return run teleport @s ^1.5 ^0.3 ^3.3
execute if score #t boss_tmp matches 42 run return run teleport @s ^1.5 ^0.2 ^3.2
execute if score #t boss_tmp matches 43 run return run teleport @s ^1.6 ^0.2 ^3.1
execute if score #t boss_tmp matches 44 run return run teleport @s ^1.6 ^0.2 ^2.9
execute if score #t boss_tmp matches 45 run return run teleport @s ^1.7 ^0.1 ^2.8
execute if score #t boss_tmp matches 46 run return run teleport @s ^1.7 ^0.1 ^2.7
execute if score #t boss_tmp matches 47 run return run teleport @s ^1.7 ^0.1 ^2.6
execute if score #t boss_tmp matches 48 run return run teleport @s ^1.6 ^0.1 ^2.5
execute if score #t boss_tmp matches 49..50 run return run teleport @s ^1.6 ^0.1 ^2.4
