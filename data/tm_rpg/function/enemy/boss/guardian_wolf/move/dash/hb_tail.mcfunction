#> tm_rpg:enemy/boss/guardian_wolf/move/dash/hb_tail

# 行動 dash の当たり判定 tail の位置（部位の動きに合わせる）。guardian_wolf/hb/tail から呼ばれる
# @s ＝ 当たり判定

execute if score #t boss_tmp matches 1..3 run return run teleport @s ^ ^1.3 ^-2.9
execute if score #t boss_tmp matches 4..5 run return run teleport @s ^ ^1.2 ^-2.9
execute if score #t boss_tmp matches 6..8 run return run teleport @s ^ ^1.1 ^-2.9
execute if score #t boss_tmp matches 9..26 run return run teleport @s ^ ^1 ^-2.9
execute if score #t boss_tmp matches 27..28 run return run teleport @s ^ ^1 ^-2.8
execute if score #t boss_tmp matches 29 run return run teleport @s ^ ^1.2 ^-2.8
execute if score #t boss_tmp matches 30 run return run teleport @s ^ ^1.5 ^-2.8
execute if score #t boss_tmp matches 31..45 run return run teleport @s ^ ^1.7 ^-2.8
execute if score #t boss_tmp matches 46 run return run teleport @s ^ ^1.5 ^-2.8
execute if score #t boss_tmp matches 47 run return run teleport @s ^ ^1.3 ^-2.9
execute if score #t boss_tmp matches 48 run return run teleport @s ^ ^1.1 ^-2.9
execute if score #t boss_tmp matches 49..62 run return run teleport @s ^ ^0.9 ^-2.9
execute if score #t boss_tmp matches 63 run return run teleport @s ^ ^1.2 ^-2.9
execute if score #t boss_tmp matches 64 run return run teleport @s ^ ^1.5 ^-2.8
execute if score #t boss_tmp matches 65 run return run teleport @s ^ ^1.7 ^-2.8
execute if score #t boss_tmp matches 66 run return run teleport @s ^ ^2 ^-2.7
execute if score #t boss_tmp matches 67..69 run return run teleport @s ^ ^1.9 ^-2.7
execute if score #t boss_tmp matches 70..71 run return run teleport @s ^ ^1.8 ^-2.7
execute if score #t boss_tmp matches 72 run return run teleport @s ^ ^1.8 ^-2.8
execute if score #t boss_tmp matches 73..75 run return run teleport @s ^ ^1.7 ^-2.8
execute if score #t boss_tmp matches 76..78 run return run teleport @s ^ ^1.6 ^-2.8
execute if score #t boss_tmp matches 79..80 run return run teleport @s ^ ^1.5 ^-2.9
execute if score #t boss_tmp matches 81..83 run return run teleport @s ^ ^1.4 ^-2.9
execute if score #t boss_tmp matches 84..85 run return run teleport @s ^ ^1.3 ^-2.9
