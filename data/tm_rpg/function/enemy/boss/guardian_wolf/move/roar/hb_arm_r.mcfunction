#> tm_rpg:enemy/boss/guardian_wolf/move/roar/hb_arm_r

# 行動 roar の当たり判定 arm_r の位置（部位の動きに合わせる）。guardian_wolf/hb/arm_r から呼ばれる
# @s ＝ 当たり判定

execute if score #t boss_tmp matches 1 run return run teleport @s ^-1.6 ^0.1 ^2.4
execute if score #t boss_tmp matches 2 run return run teleport @s ^-1.6 ^0.1 ^2.3
execute if score #t boss_tmp matches 3..4 run return run teleport @s ^-1.6 ^0.2 ^2.3
execute if score #t boss_tmp matches 5..6 run return run teleport @s ^-1.6 ^0.3 ^2.3
execute if score #t boss_tmp matches 7..8 run return run teleport @s ^-1.6 ^0.4 ^2.2
execute if score #t boss_tmp matches 9..41 run return run teleport @s ^-1.6 ^0.5 ^2.2
execute if score #t boss_tmp matches 42..43 run return run teleport @s ^-1.6 ^0.4 ^2.2
execute if score #t boss_tmp matches 44..46 run return run teleport @s ^-1.6 ^0.3 ^2.3
execute if score #t boss_tmp matches 47..48 run return run teleport @s ^-1.6 ^0.2 ^2.3
execute if score #t boss_tmp matches 49 run return run teleport @s ^-1.6 ^0.1 ^2.3
execute if score #t boss_tmp matches 50 run return run teleport @s ^-1.6 ^0.1 ^2.4
