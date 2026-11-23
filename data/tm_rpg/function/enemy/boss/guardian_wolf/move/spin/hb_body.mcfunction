#> tm_rpg:enemy/boss/guardian_wolf/move/spin/hb_body

# 行動 spin の当たり判定 body の位置（部位の動きに合わせる）。guardian_wolf/hb/body から呼ばれる
# @s ＝ 当たり判定

execute if score #t boss_tmp matches 1..3 run return run teleport @s ^ ^0.4 ^0.6
execute if score #t boss_tmp matches 4..6 run return run teleport @s ^ ^0.3 ^0.6
execute if score #t boss_tmp matches 7..9 run return run teleport @s ^ ^0.2 ^0.6
execute if score #t boss_tmp matches 10..33 run return run teleport @s ^ ^0.1 ^0.6
execute if score #t boss_tmp matches 34..37 run return run teleport @s ^ ^0.2 ^0.6
execute if score #t boss_tmp matches 38..40 run return run teleport @s ^ ^0.3 ^0.6
execute if score #t boss_tmp matches 41..45 run return run teleport @s ^ ^0.4 ^0.6
