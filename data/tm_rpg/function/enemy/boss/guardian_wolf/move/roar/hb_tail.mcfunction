#> tm_rpg:enemy/boss/guardian_wolf/move/roar/hb_tail

# 行動 roar の当たり判定 tail の位置（部位の動きに合わせる）。guardian_wolf/hb/tail から呼ばれる
# @s ＝ 当たり判定

execute if score #t boss_tmp matches 1 run return run teleport @s ^ ^1.3 ^-2.9
execute if score #t boss_tmp matches 2..3 run return run teleport @s ^ ^1.2 ^-2.9
execute if score #t boss_tmp matches 4 run return run teleport @s ^ ^1.1 ^-2.8
execute if score #t boss_tmp matches 5 run return run teleport @s ^ ^1 ^-2.8
execute if score #t boss_tmp matches 6 run return run teleport @s ^ ^0.9 ^-2.8
execute if score #t boss_tmp matches 7 run return run teleport @s ^ ^0.8 ^-2.8
execute if score #t boss_tmp matches 8 run return run teleport @s ^ ^0.8 ^-2.7
execute if score #t boss_tmp matches 9 run return run teleport @s ^ ^0.7 ^-2.7
execute if score #t boss_tmp matches 10..40 run return run teleport @s ^ ^0.6 ^-2.7
execute if score #t boss_tmp matches 41..42 run return run teleport @s ^ ^0.7 ^-2.7
execute if score #t boss_tmp matches 43 run return run teleport @s ^ ^0.8 ^-2.7
execute if score #t boss_tmp matches 44..45 run return run teleport @s ^ ^0.9 ^-2.8
execute if score #t boss_tmp matches 46 run return run teleport @s ^ ^1 ^-2.8
execute if score #t boss_tmp matches 47 run return run teleport @s ^ ^1.1 ^-2.8
execute if score #t boss_tmp matches 48 run return run teleport @s ^ ^1.2 ^-2.9
execute if score #t boss_tmp matches 49..50 run return run teleport @s ^ ^1.3 ^-2.9
