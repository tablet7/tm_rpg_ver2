#> tm_rpg:enemy/boss/guardian_wolf/move/spin/hb_head

# 行動 spin の当たり判定 head の位置（部位の動きに合わせる）。guardian_wolf/hb/head から呼ばれる
# @s ＝ 当たり判定

execute if score #t boss_tmp matches 1 run return run teleport @s ^ ^2.5 ^4
execute if score #t boss_tmp matches 2..3 run return run teleport @s ^ ^2.4 ^4
execute if score #t boss_tmp matches 4..5 run return run teleport @s ^ ^2.3 ^4
execute if score #t boss_tmp matches 6 run return run teleport @s ^ ^2.2 ^4
execute if score #t boss_tmp matches 7..8 run return run teleport @s ^ ^2.1 ^4
execute if score #t boss_tmp matches 9..34 run return run teleport @s ^ ^2 ^4
execute if score #t boss_tmp matches 35..36 run return run teleport @s ^ ^2.1 ^4
execute if score #t boss_tmp matches 37..39 run return run teleport @s ^ ^2.2 ^4
execute if score #t boss_tmp matches 40..41 run return run teleport @s ^ ^2.3 ^4
execute if score #t boss_tmp matches 42..43 run return run teleport @s ^ ^2.4 ^4
execute if score #t boss_tmp matches 44..45 run return run teleport @s ^ ^2.5 ^4
