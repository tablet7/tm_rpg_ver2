#> tm_rpg:enemy/boss/guardian_wolf/move/swipe/hb_body

# 行動 swipe の当たり判定 body の位置（部位の動きに合わせる）。guardian_wolf/hb/body から呼ばれる
# @s ＝ 当たり判定

execute if score #t boss_tmp matches 1..2 run return run teleport @s ^ ^0.4 ^0.6
execute if score #t boss_tmp matches 3..18 run return run teleport @s ^ ^0.5 ^0.6
execute if score #t boss_tmp matches 19 run return run teleport @s ^ ^0.4 ^0.6
execute if score #t boss_tmp matches 20 run return run teleport @s ^-0.1 ^0.4 ^0.6
execute if score #t boss_tmp matches 21..40 run return run teleport @s ^-0.1 ^0.3 ^0.6
execute if score #t boss_tmp matches 41..46 run return run teleport @s ^-0.1 ^0.4 ^0.6
execute if score #t boss_tmp matches 47..50 run return run teleport @s ^ ^0.4 ^0.6
