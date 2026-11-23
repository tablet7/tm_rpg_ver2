#> tm_rpg:enemy/boss/guardian_wolf/move/dash/hb_body

# 行動 dash の当たり判定 body の位置（部位の動きに合わせる）。guardian_wolf/hb/body から呼ばれる
# @s ＝ 当たり判定

execute if score #t boss_tmp matches 1..3 run return run teleport @s ^ ^0.4 ^0.6
execute if score #t boss_tmp matches 4..28 run return run teleport @s ^ ^0.5 ^0.6
execute if score #t boss_tmp matches 29..47 run return run teleport @s ^ ^0.4 ^0.6
execute if score #t boss_tmp matches 48..63 run return run teleport @s ^ ^0.5 ^0.6
execute if score #t boss_tmp matches 64..65 run return run teleport @s ^ ^0.4 ^0.6
execute if score #t boss_tmp matches 66..68 run return run teleport @s ^ ^0.3 ^0.6
execute if score #t boss_tmp matches 69..85 run return run teleport @s ^ ^0.4 ^0.6
