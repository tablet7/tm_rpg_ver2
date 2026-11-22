#> tm_rpg:enemy/boss/guardian_wolf/move/swipe/hb_arm_r

# 行動 swipe の当たり判定 arm_r の位置（部位の動きに合わせる）。guardian_wolf/hb/arm_r から呼ばれる
# @s ＝ 当たり判定

execute if score #t boss_tmp matches 1..3 run return run teleport @s ^-1.6 ^0.1 ^2.4
execute if score #t boss_tmp matches 4..7 run return run teleport @s ^-1.6 ^0.2 ^2.4
execute if score #t boss_tmp matches 8..10 run return run teleport @s ^-1.6 ^0.3 ^2.4
execute if score #t boss_tmp matches 11..18 run return run teleport @s ^-1.6 ^0.4 ^2.4
execute if score #t boss_tmp matches 19 run return run teleport @s ^-1.7 ^ ^2.2
execute if score #t boss_tmp matches 20 run return run teleport @s ^-1.8 ^-0.3 ^2
execute if score #t boss_tmp matches 21..40 run return run teleport @s ^-1.8 ^-0.6 ^1.7
execute if score #t boss_tmp matches 41 run return run teleport @s ^-1.8 ^-0.5 ^1.7
execute if score #t boss_tmp matches 42 run return run teleport @s ^-1.8 ^-0.5 ^1.8
execute if score #t boss_tmp matches 43 run return run teleport @s ^-1.8 ^-0.4 ^1.9
execute if score #t boss_tmp matches 44 run return run teleport @s ^-1.8 ^-0.3 ^2
execute if score #t boss_tmp matches 45 run return run teleport @s ^-1.7 ^-0.3 ^2
execute if score #t boss_tmp matches 46 run return run teleport @s ^-1.7 ^-0.2 ^2.1
execute if score #t boss_tmp matches 47 run return run teleport @s ^-1.7 ^-0.1 ^2.2
execute if score #t boss_tmp matches 48 run return run teleport @s ^-1.6 ^-0.1 ^2.2
execute if score #t boss_tmp matches 49 run return run teleport @s ^-1.6 ^ ^2.3
execute if score #t boss_tmp matches 50 run return run teleport @s ^-1.6 ^0.1 ^2.4
