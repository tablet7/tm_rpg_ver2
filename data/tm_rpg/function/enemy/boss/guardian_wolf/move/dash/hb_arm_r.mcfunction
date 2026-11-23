#> tm_rpg:enemy/boss/guardian_wolf/move/dash/hb_arm_r

# 行動 dash の当たり判定 arm_r の位置（部位の動きに合わせる）。guardian_wolf/hb/arm_r から呼ばれる
# @s ＝ 当たり判定

execute if score #t boss_tmp matches 1 run return run teleport @s ^-1.6 ^0.1 ^2.4
execute if score #t boss_tmp matches 2 run return run teleport @s ^-1.6 ^0.2 ^2.8
execute if score #t boss_tmp matches 3 run return run teleport @s ^-1.6 ^0.4 ^3.1
execute if score #t boss_tmp matches 4 run return run teleport @s ^-1.6 ^0.8 ^3.4
execute if score #t boss_tmp matches 5 run return run teleport @s ^-1.6 ^1.2 ^3.6
execute if score #t boss_tmp matches 6 run return run teleport @s ^-1.6 ^1.7 ^3.7
execute if score #t boss_tmp matches 7 run return run teleport @s ^-1.6 ^2.1 ^3.6
execute if score #t boss_tmp matches 8 run return run teleport @s ^-1.6 ^2.5 ^3.4
execute if score #t boss_tmp matches 9 run return run teleport @s ^-1.6 ^2.9 ^3.1
execute if score #t boss_tmp matches 10..28 run return run teleport @s ^-1.6 ^3.1 ^2.7
execute if score #t boss_tmp matches 29 run return run teleport @s ^-1.6 ^2.9 ^2.8
execute if score #t boss_tmp matches 30 run return run teleport @s ^-1.6 ^2.7 ^3
execute if score #t boss_tmp matches 31..45 run return run teleport @s ^-1.6 ^2.4 ^3.1
execute if score #t boss_tmp matches 46 run return run teleport @s ^-1.6 ^2.6 ^3
execute if score #t boss_tmp matches 47 run return run teleport @s ^-1.6 ^2.8 ^2.9
execute if score #t boss_tmp matches 48 run return run teleport @s ^-1.6 ^3 ^2.7
execute if score #t boss_tmp matches 49..62 run return run teleport @s ^-1.6 ^3.2 ^2.6
execute if score #t boss_tmp matches 63 run return run teleport @s ^-1.6 ^2.4 ^3.4
execute if score #t boss_tmp matches 64 run return run teleport @s ^-1.6 ^1.3 ^3.7
execute if score #t boss_tmp matches 65 run return run teleport @s ^-1.6 ^0.3 ^3.4
execute if score #t boss_tmp matches 66..68 run return run teleport @s ^-1.6 ^-0.4 ^2.6
execute if score #t boss_tmp matches 69..70 run return run teleport @s ^-1.6 ^-0.3 ^2.6
execute if score #t boss_tmp matches 71 run return run teleport @s ^-1.6 ^-0.3 ^2.5
execute if score #t boss_tmp matches 72..75 run return run teleport @s ^-1.6 ^-0.2 ^2.5
execute if score #t boss_tmp matches 76..77 run return run teleport @s ^-1.6 ^-0.1 ^2.5
execute if score #t boss_tmp matches 78..79 run return run teleport @s ^-1.6 ^-0.1 ^2.4
execute if score #t boss_tmp matches 80..82 run return run teleport @s ^-1.6 ^ ^2.4
execute if score #t boss_tmp matches 83..85 run return run teleport @s ^-1.6 ^0.1 ^2.4
