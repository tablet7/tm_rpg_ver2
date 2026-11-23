#> tm_rpg:enemy/boss/guardian_wolf/move/roar/hb_body

# 行動 roar の当たり判定 body の位置（部位の動きに合わせる）。guardian_wolf/hb/body から呼ばれる
# @s ＝ 当たり判定

execute if score #t boss_tmp matches 1..2 run return run teleport @s ^ ^0.4 ^0.6
execute if score #t boss_tmp matches 3..9 run return run teleport @s ^ ^0.5 ^0.6
execute if score #t boss_tmp matches 10..40 run return run teleport @s ^ ^0.5 ^0.5
execute if score #t boss_tmp matches 41..48 run return run teleport @s ^ ^0.5 ^0.6
execute if score #t boss_tmp matches 49..50 run return run teleport @s ^ ^0.4 ^0.6
