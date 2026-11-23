#> tm_rpg:enemy/boss/guardian_wolf/move/leap/hb_head

# 行動 leap の当たり判定 head の位置（部位の動きに合わせる）。guardian_wolf/hb/head から呼ばれる
# @s ＝ 当たり判定

execute if score #t boss_tmp matches 1 run return run teleport @s ^ ^2.5 ^4
execute if score #t boss_tmp matches 2 run return run teleport @s ^ ^2.4 ^4
execute if score #t boss_tmp matches 3 run return run teleport @s ^ ^2.3 ^4
execute if score #t boss_tmp matches 4 run return run teleport @s ^ ^2.2 ^4.1
execute if score #t boss_tmp matches 5 run return run teleport @s ^ ^2 ^4.1
execute if score #t boss_tmp matches 6 run return run teleport @s ^ ^1.9 ^4.1
execute if score #t boss_tmp matches 7 run return run teleport @s ^ ^1.8 ^4.1
execute if score #t boss_tmp matches 8 run return run teleport @s ^ ^1.7 ^4.1
execute if score #t boss_tmp matches 9 run return run teleport @s ^ ^1.6 ^4.1
execute if score #t boss_tmp matches 10 run return run teleport @s ^ ^1.5 ^4.2
execute if score #t boss_tmp matches 11 run return run teleport @s ^ ^2 ^4.1
execute if score #t boss_tmp matches 12 run return run teleport @s ^ ^2.4 ^3.9
execute if score #t boss_tmp matches 13 run return run teleport @s ^ ^2.9 ^3.7
execute if score #t boss_tmp matches 14 run return run teleport @s ^ ^3.3 ^3.5
execute if score #t boss_tmp matches 15 run return run teleport @s ^ ^3.7 ^3.3
execute if score #t boss_tmp matches 16 run return run teleport @s ^ ^3.5 ^3.4
execute if score #t boss_tmp matches 17 run return run teleport @s ^ ^3.3 ^3.6
execute if score #t boss_tmp matches 18 run return run teleport @s ^ ^3.2 ^3.7
execute if score #t boss_tmp matches 19 run return run teleport @s ^ ^3 ^3.8
execute if score #t boss_tmp matches 20 run return run teleport @s ^ ^2.8 ^3.9
execute if score #t boss_tmp matches 21 run return run teleport @s ^ ^2.6 ^4
execute if score #t boss_tmp matches 22 run return run teleport @s ^ ^2.4 ^4
execute if score #t boss_tmp matches 23 run return run teleport @s ^ ^2.2 ^4.1
execute if score #t boss_tmp matches 24 run return run teleport @s ^ ^2 ^4.1
execute if score #t boss_tmp matches 25 run return run teleport @s ^ ^1.8 ^4.2
execute if score #t boss_tmp matches 26 run return run teleport @s ^ ^1.6 ^4.2
execute if score #t boss_tmp matches 27 run return run teleport @s ^ ^1.4 ^4.2
execute if score #t boss_tmp matches 28 run return run teleport @s ^ ^1.2 ^4.2
execute if score #t boss_tmp matches 29 run return run teleport @s ^ ^1 ^4.2
execute if score #t boss_tmp matches 30 run return run teleport @s ^ ^0.8 ^4.2
execute if score #t boss_tmp matches 31 run return run teleport @s ^ ^1 ^4.2
execute if score #t boss_tmp matches 32 run return run teleport @s ^ ^1.2 ^4.2
execute if score #t boss_tmp matches 33 run return run teleport @s ^ ^1.4 ^4.2
execute if score #t boss_tmp matches 34 run return run teleport @s ^ ^1.6 ^4.2
execute if score #t boss_tmp matches 35 run return run teleport @s ^ ^1.8 ^4.2
execute if score #t boss_tmp matches 36 run return run teleport @s ^ ^1.9 ^4.1
execute if score #t boss_tmp matches 37..38 run return run teleport @s ^ ^2 ^4.1
execute if score #t boss_tmp matches 39..40 run return run teleport @s ^ ^2.1 ^4.1
execute if score #t boss_tmp matches 41..42 run return run teleport @s ^ ^2.2 ^4.1
execute if score #t boss_tmp matches 43..44 run return run teleport @s ^ ^2.3 ^4.1
execute if score #t boss_tmp matches 45..48 run return run teleport @s ^ ^2.4 ^4
execute if score #t boss_tmp matches 49..55 run return run teleport @s ^ ^2.5 ^4
