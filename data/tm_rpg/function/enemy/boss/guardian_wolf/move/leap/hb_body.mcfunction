#> tm_rpg:enemy/boss/guardian_wolf/move/leap/hb_body

# 行動 leap の当たり判定 body の位置（部位の動きに合わせる）。guardian_wolf/hb/body から呼ばれる
# @s ＝ 当たり判定

execute if score #t boss_tmp matches 1..2 run return run teleport @s ^ ^0.4 ^0.6
execute if score #t boss_tmp matches 3 run return run teleport @s ^ ^0.3 ^0.6
execute if score #t boss_tmp matches 4..5 run return run teleport @s ^ ^0.2 ^0.6
execute if score #t boss_tmp matches 6..7 run return run teleport @s ^ ^0.1 ^0.6
execute if score #t boss_tmp matches 8 run return run teleport @s ^ ^ ^0.6
execute if score #t boss_tmp matches 9..10 run return run teleport @s ^ ^-0.1 ^0.6
execute if score #t boss_tmp matches 11 run return run teleport @s ^ ^ ^0.6
execute if score #t boss_tmp matches 12 run return run teleport @s ^ ^0.1 ^0.6
execute if score #t boss_tmp matches 13 run return run teleport @s ^ ^0.3 ^0.6
execute if score #t boss_tmp matches 14 run return run teleport @s ^ ^0.4 ^0.6
execute if score #t boss_tmp matches 15..16 run return run teleport @s ^ ^0.5 ^0.5
execute if score #t boss_tmp matches 17..20 run return run teleport @s ^ ^0.5 ^0.6
execute if score #t boss_tmp matches 21..26 run return run teleport @s ^ ^0.4 ^0.6
execute if score #t boss_tmp matches 27..33 run return run teleport @s ^ ^0.3 ^0.6
execute if score #t boss_tmp matches 34..55 run return run teleport @s ^ ^0.4 ^0.6
