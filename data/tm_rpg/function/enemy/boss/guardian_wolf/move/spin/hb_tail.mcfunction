#> tm_rpg:enemy/boss/guardian_wolf/move/spin/hb_tail

# 行動 spin の当たり判定 tail の位置（部位の動きに合わせる）。guardian_wolf/hb/tail から呼ばれる
# @s ＝ 当たり判定

execute if score #t boss_tmp matches 1..2 run return run teleport @s ^ ^1.3 ^-2.9
execute if score #t boss_tmp matches 3 run return run teleport @s ^ ^1.2 ^-2.9
execute if score #t boss_tmp matches 4 run return run teleport @s ^ ^1.2 ^-2.8
execute if score #t boss_tmp matches 5..7 run return run teleport @s ^ ^1.1 ^-2.8
execute if score #t boss_tmp matches 8 run return run teleport @s ^ ^1 ^-2.8
execute if score #t boss_tmp matches 9 run return run teleport @s ^ ^1 ^-2.7
execute if score #t boss_tmp matches 10..21 run return run teleport @s ^ ^0.9 ^-2.7
execute if score #t boss_tmp matches 22 run return run teleport @s ^ ^0.9 ^-2.8
execute if score #t boss_tmp matches 23..33 run return run teleport @s ^-0.1 ^1 ^-2.8
execute if score #t boss_tmp matches 34..36 run return run teleport @s ^ ^1 ^-2.8
execute if score #t boss_tmp matches 37..39 run return run teleport @s ^ ^1.1 ^-2.8
execute if score #t boss_tmp matches 40 run return run teleport @s ^ ^1.2 ^-2.8
execute if score #t boss_tmp matches 41 run return run teleport @s ^ ^1.2 ^-2.9
execute if score #t boss_tmp matches 42..45 run return run teleport @s ^ ^1.3 ^-2.9
