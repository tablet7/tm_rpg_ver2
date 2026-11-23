#> tm_rpg:enemy/boss/guardian_wolf/move/roar/hb_head

# 行動 roar の当たり判定 head の位置（部位の動きに合わせる）。guardian_wolf/hb/head から呼ばれる
# @s ＝ 当たり判定

execute if score #t boss_tmp matches 1 run return run teleport @s ^ ^2.5 ^4
execute if score #t boss_tmp matches 2 run return run teleport @s ^ ^2.7 ^3.9
execute if score #t boss_tmp matches 3 run return run teleport @s ^ ^2.9 ^3.9
execute if score #t boss_tmp matches 4 run return run teleport @s ^ ^3 ^3.8
execute if score #t boss_tmp matches 5 run return run teleport @s ^ ^3.2 ^3.6
execute if score #t boss_tmp matches 6 run return run teleport @s ^ ^3.4 ^3.5
execute if score #t boss_tmp matches 7 run return run teleport @s ^ ^3.5 ^3.4
execute if score #t boss_tmp matches 8 run return run teleport @s ^ ^3.6 ^3.2
execute if score #t boss_tmp matches 9 run return run teleport @s ^ ^3.8 ^3.1
execute if score #t boss_tmp matches 10..40 run return run teleport @s ^ ^3.9 ^2.9
execute if score #t boss_tmp matches 41 run return run teleport @s ^ ^3.8 ^3.1
execute if score #t boss_tmp matches 42 run return run teleport @s ^ ^3.7 ^3.2
execute if score #t boss_tmp matches 43 run return run teleport @s ^ ^3.5 ^3.3
execute if score #t boss_tmp matches 44 run return run teleport @s ^ ^3.4 ^3.5
execute if score #t boss_tmp matches 45 run return run teleport @s ^ ^3.3 ^3.6
execute if score #t boss_tmp matches 46 run return run teleport @s ^ ^3.1 ^3.7
execute if score #t boss_tmp matches 47 run return run teleport @s ^ ^3 ^3.8
execute if score #t boss_tmp matches 48 run return run teleport @s ^ ^2.8 ^3.9
execute if score #t boss_tmp matches 49 run return run teleport @s ^ ^2.7 ^3.9
execute if score #t boss_tmp matches 50 run return run teleport @s ^ ^2.5 ^4
