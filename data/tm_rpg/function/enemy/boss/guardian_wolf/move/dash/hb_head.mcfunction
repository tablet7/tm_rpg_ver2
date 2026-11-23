#> tm_rpg:enemy/boss/guardian_wolf/move/dash/hb_head

# 行動 dash の当たり判定 head の位置（部位の動きに合わせる）。guardian_wolf/hb/head から呼ばれる
# @s ＝ 当たり判定

execute if score #t boss_tmp matches 1..2 run return run teleport @s ^ ^2.5 ^4
execute if score #t boss_tmp matches 3..4 run return run teleport @s ^ ^2.6 ^4
execute if score #t boss_tmp matches 5 run return run teleport @s ^ ^2.6 ^3.9
execute if score #t boss_tmp matches 6..8 run return run teleport @s ^ ^2.7 ^3.9
execute if score #t boss_tmp matches 9..18 run return run teleport @s ^ ^2.8 ^3.9
execute if score #t boss_tmp matches 19..28 run return run teleport @s ^ ^2.7 ^3.9
execute if score #t boss_tmp matches 29 run return run teleport @s ^ ^2.4 ^4
execute if score #t boss_tmp matches 30 run return run teleport @s ^ ^2 ^4.1
execute if score #t boss_tmp matches 31..45 run return run teleport @s ^ ^1.7 ^4.2
execute if score #t boss_tmp matches 46 run return run teleport @s ^ ^2.1 ^4.1
execute if score #t boss_tmp matches 47 run return run teleport @s ^ ^2.4 ^4
execute if score #t boss_tmp matches 48 run return run teleport @s ^ ^2.8 ^3.9
execute if score #t boss_tmp matches 49..62 run return run teleport @s ^ ^3.1 ^3.7
execute if score #t boss_tmp matches 63 run return run teleport @s ^ ^2.7 ^3.9
execute if score #t boss_tmp matches 64 run return run teleport @s ^ ^2.2 ^4.1
execute if score #t boss_tmp matches 65 run return run teleport @s ^ ^1.7 ^4.2
execute if score #t boss_tmp matches 66..67 run return run teleport @s ^ ^1.3 ^4.2
execute if score #t boss_tmp matches 68 run return run teleport @s ^ ^1.4 ^4.2
execute if score #t boss_tmp matches 69..70 run return run teleport @s ^ ^1.5 ^4.2
execute if score #t boss_tmp matches 71 run return run teleport @s ^ ^1.6 ^4.2
execute if score #t boss_tmp matches 72..73 run return run teleport @s ^ ^1.7 ^4.2
execute if score #t boss_tmp matches 74 run return run teleport @s ^ ^1.8 ^4.2
execute if score #t boss_tmp matches 75 run return run teleport @s ^ ^1.9 ^4.2
execute if score #t boss_tmp matches 76 run return run teleport @s ^ ^1.9 ^4.1
execute if score #t boss_tmp matches 77 run return run teleport @s ^ ^2 ^4.1
execute if score #t boss_tmp matches 78..79 run return run teleport @s ^ ^2.1 ^4.1
execute if score #t boss_tmp matches 80 run return run teleport @s ^ ^2.2 ^4.1
execute if score #t boss_tmp matches 81 run return run teleport @s ^ ^2.3 ^4.1
execute if score #t boss_tmp matches 82 run return run teleport @s ^ ^2.3 ^4
execute if score #t boss_tmp matches 83 run return run teleport @s ^ ^2.4 ^4
execute if score #t boss_tmp matches 84..85 run return run teleport @s ^ ^2.5 ^4
