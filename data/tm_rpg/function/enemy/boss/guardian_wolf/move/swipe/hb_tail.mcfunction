#> tm_rpg:enemy/boss/guardian_wolf/move/swipe/hb_tail

# 行動 swipe の当たり判定 tail の位置（部位の動きに合わせる）。guardian_wolf/hb/tail から呼ばれる
# @s ＝ 当たり判定

execute if score #t boss_tmp matches 1..3 run return run teleport @s ^ ^1.3 ^-2.9
execute if score #t boss_tmp matches 4..5 run return run teleport @s ^ ^1.2 ^-2.9
execute if score #t boss_tmp matches 6..8 run return run teleport @s ^ ^1.1 ^-2.9
execute if score #t boss_tmp matches 9..10 run return run teleport @s ^ ^1 ^-2.9
execute if score #t boss_tmp matches 11..13 run return run teleport @s ^ ^0.9 ^-2.9
execute if score #t boss_tmp matches 14..18 run return run teleport @s ^-0.1 ^0.9 ^-2.9
execute if score #t boss_tmp matches 19 run return run teleport @s ^0.2 ^1.3 ^-2.9
execute if score #t boss_tmp matches 20 run return run teleport @s ^0.4 ^1.6 ^-2.8
execute if score #t boss_tmp matches 21..40 run return run teleport @s ^0.7 ^2 ^-2.7
execute if score #t boss_tmp matches 41 run return run teleport @s ^0.6 ^1.9 ^-2.7
execute if score #t boss_tmp matches 42..43 run return run teleport @s ^0.5 ^1.8 ^-2.8
execute if score #t boss_tmp matches 44 run return run teleport @s ^0.4 ^1.7 ^-2.8
execute if score #t boss_tmp matches 45 run return run teleport @s ^0.3 ^1.6 ^-2.8
execute if score #t boss_tmp matches 46 run return run teleport @s ^0.3 ^1.6 ^-2.9
execute if score #t boss_tmp matches 47 run return run teleport @s ^0.2 ^1.5 ^-2.9
execute if score #t boss_tmp matches 48 run return run teleport @s ^0.1 ^1.5 ^-2.9
execute if score #t boss_tmp matches 49 run return run teleport @s ^0.1 ^1.4 ^-2.9
execute if score #t boss_tmp matches 50 run return run teleport @s ^ ^1.3 ^-2.9
