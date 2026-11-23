#> tm_rpg:enemy/boss/guardian_wolf/move/spin/hb_arm_l

# 行動 spin の当たり判定 arm_l の位置（部位の動きに合わせる）。guardian_wolf/hb/arm_l から呼ばれる
# @s ＝ 当たり判定

execute if score #t boss_tmp matches 1..2 run return run teleport @s ^1.6 ^0.1 ^2.4
execute if score #t boss_tmp matches 3..5 run return run teleport @s ^1.6 ^ ^2.4
execute if score #t boss_tmp matches 6..8 run return run teleport @s ^1.6 ^-0.1 ^2.4
execute if score #t boss_tmp matches 9..35 run return run teleport @s ^1.6 ^-0.2 ^2.4
execute if score #t boss_tmp matches 36..39 run return run teleport @s ^1.6 ^-0.1 ^2.4
execute if score #t boss_tmp matches 40..42 run return run teleport @s ^1.6 ^ ^2.4
execute if score #t boss_tmp matches 43..45 run return run teleport @s ^1.6 ^0.1 ^2.4
