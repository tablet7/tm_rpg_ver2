#> tm_rpg:enemy/boss/guardian_wolf/move/leap/hb_tail

# 行動 leap の当たり判定 tail の位置（部位の動きに合わせる）。guardian_wolf/hb/tail から呼ばれる
# @s ＝ 当たり判定

execute if score #t boss_tmp matches 1..2 run return run teleport @s ^ ^1.3 ^-2.9
execute if score #t boss_tmp matches 3..10 run return run teleport @s ^ ^1.4 ^-2.9
execute if score #t boss_tmp matches 11 run return run teleport @s ^ ^1.3 ^-2.9
execute if score #t boss_tmp matches 12 run return run teleport @s ^ ^1.1 ^-3
execute if score #t boss_tmp matches 13 run return run teleport @s ^ ^0.9 ^-3
execute if score #t boss_tmp matches 14 run return run teleport @s ^ ^0.8 ^-3
execute if score #t boss_tmp matches 15 run return run teleport @s ^ ^0.6 ^-3
execute if score #t boss_tmp matches 16 run return run teleport @s ^ ^0.7 ^-3
execute if score #t boss_tmp matches 17 run return run teleport @s ^ ^0.8 ^-3
execute if score #t boss_tmp matches 18 run return run teleport @s ^ ^0.9 ^-3
execute if score #t boss_tmp matches 19 run return run teleport @s ^ ^1.1 ^-2.9
execute if score #t boss_tmp matches 20 run return run teleport @s ^ ^1.2 ^-2.9
execute if score #t boss_tmp matches 21 run return run teleport @s ^ ^1.3 ^-2.9
execute if score #t boss_tmp matches 22 run return run teleport @s ^ ^1.4 ^-2.9
execute if score #t boss_tmp matches 23 run return run teleport @s ^ ^1.5 ^-2.9
execute if score #t boss_tmp matches 24 run return run teleport @s ^ ^1.6 ^-2.8
execute if score #t boss_tmp matches 25 run return run teleport @s ^ ^1.7 ^-2.8
execute if score #t boss_tmp matches 26 run return run teleport @s ^ ^1.8 ^-2.7
execute if score #t boss_tmp matches 27 run return run teleport @s ^ ^1.9 ^-2.7
execute if score #t boss_tmp matches 28 run return run teleport @s ^ ^2 ^-2.6
execute if score #t boss_tmp matches 29 run return run teleport @s ^ ^2.2 ^-2.6
execute if score #t boss_tmp matches 30 run return run teleport @s ^ ^2.3 ^-2.5
execute if score #t boss_tmp matches 31 run return run teleport @s ^ ^2.1 ^-2.6
execute if score #t boss_tmp matches 32 run return run teleport @s ^ ^2 ^-2.6
execute if score #t boss_tmp matches 33 run return run teleport @s ^ ^1.9 ^-2.7
execute if score #t boss_tmp matches 34 run return run teleport @s ^ ^1.8 ^-2.7
execute if score #t boss_tmp matches 35 run return run teleport @s ^ ^1.7 ^-2.8
execute if score #t boss_tmp matches 36 run return run teleport @s ^ ^1.6 ^-2.8
execute if score #t boss_tmp matches 37..38 run return run teleport @s ^ ^1.5 ^-2.8
execute if score #t boss_tmp matches 39..43 run return run teleport @s ^ ^1.5 ^-2.9
execute if score #t boss_tmp matches 44..48 run return run teleport @s ^ ^1.4 ^-2.9
execute if score #t boss_tmp matches 49..55 run return run teleport @s ^ ^1.3 ^-2.9
