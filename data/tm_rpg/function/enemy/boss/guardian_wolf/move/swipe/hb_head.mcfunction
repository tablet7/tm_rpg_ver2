#> tm_rpg:enemy/boss/guardian_wolf/move/swipe/hb_head

# 行動 swipe の当たり判定 head の位置（部位の動きに合わせる）。guardian_wolf/hb/head から呼ばれる
# @s ＝ 当たり判定

execute if score #t boss_tmp matches 1..2 run return run teleport @s ^ ^2.5 ^4
execute if score #t boss_tmp matches 3 run return run teleport @s ^ ^2.6 ^4
execute if score #t boss_tmp matches 4..5 run return run teleport @s ^ ^2.7 ^3.9
execute if score #t boss_tmp matches 6 run return run teleport @s ^ ^2.8 ^3.9
execute if score #t boss_tmp matches 7..8 run return run teleport @s ^ ^2.9 ^3.8
execute if score #t boss_tmp matches 9 run return run teleport @s ^ ^3 ^3.8
execute if score #t boss_tmp matches 10..11 run return run teleport @s ^ ^3.1 ^3.7
execute if score #t boss_tmp matches 12..13 run return run teleport @s ^ ^3.2 ^3.7
execute if score #t boss_tmp matches 14 run return run teleport @s ^ ^3.1 ^3.7
execute if score #t boss_tmp matches 15 run return run teleport @s ^-0.1 ^3.1 ^3.7
execute if score #t boss_tmp matches 16 run return run teleport @s ^-0.1 ^3 ^3.7
execute if score #t boss_tmp matches 17..18 run return run teleport @s ^-0.1 ^3 ^3.8
execute if score #t boss_tmp matches 19 run return run teleport @s ^-0.6 ^2.5 ^3.9
execute if score #t boss_tmp matches 20 run return run teleport @s ^-1 ^2 ^4
execute if score #t boss_tmp matches 21..40 run return run teleport @s ^-1.4 ^1.4 ^3.9
execute if score #t boss_tmp matches 41 run return run teleport @s ^-1.3 ^1.5 ^4
execute if score #t boss_tmp matches 42 run return run teleport @s ^-1.2 ^1.7 ^4
execute if score #t boss_tmp matches 43 run return run teleport @s ^-1 ^1.8 ^4
execute if score #t boss_tmp matches 44 run return run teleport @s ^-0.9 ^1.9 ^4.1
execute if score #t boss_tmp matches 45 run return run teleport @s ^-0.7 ^2 ^4.1
execute if score #t boss_tmp matches 46 run return run teleport @s ^-0.6 ^2.1 ^4.1
execute if score #t boss_tmp matches 47 run return run teleport @s ^-0.4 ^2.2 ^4.1
execute if score #t boss_tmp matches 48 run return run teleport @s ^-0.3 ^2.3 ^4.1
execute if score #t boss_tmp matches 49 run return run teleport @s ^-0.1 ^2.4 ^4
execute if score #t boss_tmp matches 50 run return run teleport @s ^ ^2.5 ^4
