#> tm_rpg:enemy/boss/crawler/move/slam_parts

# 行動 3: slam の部位側（回転と一時的な移動）。crawler/part_tick から呼ばれる
# @s ＝ 部位。実行位置と向きはマスターのもの。#t ＝ この行動に入ってからのtick数

# 回転（1tickあたりの yaw pitch。pitch は負で上向き）。rotated as @s で部位自身の角度を基準にする
execute if score #t boss_tmp matches 1..16 rotated as @s run rotate @s[tag=crawler.arm_u] ~ ~-1.88
execute if score #t boss_tmp matches 17..26 rotated as @s run rotate @s[tag=crawler.arm_u] ~ ~-0.2
execute if score #t boss_tmp matches 27..29 rotated as @s run rotate @s[tag=crawler.arm_u] ~ ~20.67
execute if score #t boss_tmp matches 51..64 rotated as @s run rotate @s[tag=crawler.arm_u] ~ ~-2.14
execute if score #t boss_tmp matches 65 rotated as @s run rotate @s[tag=crawler.arm_u] ~ 0
execute if score #t boss_tmp matches 1..16 rotated as @s run rotate @s[tag=crawler.arm_f] ~ ~-5.62
execute if score #t boss_tmp matches 27..29 rotated as @s run rotate @s[tag=crawler.arm_f] ~ ~36.67
execute if score #t boss_tmp matches 51..64 rotated as @s run rotate @s[tag=crawler.arm_f] ~ ~-1.43
execute if score #t boss_tmp matches 65 rotated as @s run rotate @s[tag=crawler.arm_f] ~ 0
execute if score #t boss_tmp matches 1..16 rotated as @s run rotate @s[tag=crawler.head] ~ ~-0.94
execute if score #t boss_tmp matches 27..29 rotated as @s run rotate @s[tag=crawler.head] ~ ~8.33
execute if score #t boss_tmp matches 51..64 rotated as @s run rotate @s[tag=crawler.head] ~ ~-0.71
execute if score #t boss_tmp matches 65 rotated as @s run rotate @s[tag=crawler.head] ~ 0
execute if score #t boss_tmp matches 1..16 rotated as @s run rotate @s[tag=crawler.jaw] ~ ~-0.31
execute if score #t boss_tmp matches 27..29 rotated as @s run rotate @s[tag=crawler.jaw] ~ ~6.67
execute if score #t boss_tmp matches 51..64 rotated as @s run rotate @s[tag=crawler.jaw] ~ ~-1.07
execute if score #t boss_tmp matches 65 rotated as @s run rotate @s[tag=crawler.jaw] ~ 0
# 一時的な移動（定位置からのずれ。part_tick の配置を上書きする）
execute if score #t boss_tmp matches 1 run teleport @s[tag=crawler.arm_f] ^-5.932 ^1.923 ^0.741
execute if score #t boss_tmp matches 2 run teleport @s[tag=crawler.arm_f] ^-5.932 ^1.913 ^0.631
execute if score #t boss_tmp matches 3 run teleport @s[tag=crawler.arm_f] ^-5.932 ^1.903 ^0.531
execute if score #t boss_tmp matches 4 run teleport @s[tag=crawler.arm_f] ^-5.932 ^1.893 ^0.421
execute if score #t boss_tmp matches 5 run teleport @s[tag=crawler.arm_f] ^-5.932 ^1.883 ^0.321
execute if score #t boss_tmp matches 6 run teleport @s[tag=crawler.arm_f] ^-5.932 ^1.863 ^0.221
execute if score #t boss_tmp matches 7 run teleport @s[tag=crawler.arm_f] ^-5.932 ^1.843 ^0.111
execute if score #t boss_tmp matches 8 run teleport @s[tag=crawler.arm_f] ^-5.932 ^1.813 ^0.011
execute if score #t boss_tmp matches 9 run teleport @s[tag=crawler.arm_f] ^-5.932 ^1.783 ^-0.089
execute if score #t boss_tmp matches 10 run teleport @s[tag=crawler.arm_f] ^-5.932 ^1.753 ^-0.189
execute if score #t boss_tmp matches 11 run teleport @s[tag=crawler.arm_f] ^-5.932 ^1.713 ^-0.289
execute if score #t boss_tmp matches 12 run teleport @s[tag=crawler.arm_f] ^-5.932 ^1.683 ^-0.379
execute if score #t boss_tmp matches 13 run teleport @s[tag=crawler.arm_f] ^-5.932 ^1.633 ^-0.479
execute if score #t boss_tmp matches 14 run teleport @s[tag=crawler.arm_f] ^-5.932 ^1.593 ^-0.579
execute if score #t boss_tmp matches 15 run teleport @s[tag=crawler.arm_f] ^-5.932 ^1.543 ^-0.669
execute if score #t boss_tmp matches 16 run teleport @s[tag=crawler.arm_f] ^-5.932 ^1.493 ^-0.759
execute if score #t boss_tmp matches 17 run teleport @s[tag=crawler.arm_f] ^-5.932 ^1.493 ^-0.769
execute if score #t boss_tmp matches 18 run teleport @s[tag=crawler.arm_f] ^-5.932 ^1.483 ^-0.779
execute if score #t boss_tmp matches 19 run teleport @s[tag=crawler.arm_f] ^-5.932 ^1.473 ^-0.789
execute if score #t boss_tmp matches 20 run teleport @s[tag=crawler.arm_f] ^-5.932 ^1.473 ^-0.799
execute if score #t boss_tmp matches 21 run teleport @s[tag=crawler.arm_f] ^-5.932 ^1.463 ^-0.809
execute if score #t boss_tmp matches 22 run teleport @s[tag=crawler.arm_f] ^-5.932 ^1.463 ^-0.819
execute if score #t boss_tmp matches 23 run teleport @s[tag=crawler.arm_f] ^-5.932 ^1.453 ^-0.829
execute if score #t boss_tmp matches 24 run teleport @s[tag=crawler.arm_f] ^-5.932 ^1.453 ^-0.839
execute if score #t boss_tmp matches 25 run teleport @s[tag=crawler.arm_f] ^-5.932 ^1.443 ^-0.849
execute if score #t boss_tmp matches 26 run teleport @s[tag=crawler.arm_f] ^-5.932 ^1.433 ^-0.859
execute if score #t boss_tmp matches 27 run teleport @s[tag=crawler.arm_f] ^-5.932 ^1.863 ^0.211
execute if score #t boss_tmp matches 28 run teleport @s[tag=crawler.arm_f] ^-5.932 ^1.883 ^1.361
execute if score #t boss_tmp matches 29..50 run teleport @s[tag=crawler.arm_f] ^-5.932 ^1.493 ^2.441
execute if score #t boss_tmp matches 51 run teleport @s[tag=crawler.arm_f] ^-5.932 ^1.553 ^2.341
execute if score #t boss_tmp matches 52 run teleport @s[tag=crawler.arm_f] ^-5.932 ^1.603 ^2.231
execute if score #t boss_tmp matches 53 run teleport @s[tag=crawler.arm_f] ^-5.932 ^1.653 ^2.121
execute if score #t boss_tmp matches 54 run teleport @s[tag=crawler.arm_f] ^-5.932 ^1.703 ^2.011
execute if score #t boss_tmp matches 55 run teleport @s[tag=crawler.arm_f] ^-5.932 ^1.743 ^1.901
execute if score #t boss_tmp matches 56 run teleport @s[tag=crawler.arm_f] ^-5.932 ^1.783 ^1.781
execute if score #t boss_tmp matches 57 run teleport @s[tag=crawler.arm_f] ^-5.932 ^1.813 ^1.671
execute if score #t boss_tmp matches 58 run teleport @s[tag=crawler.arm_f] ^-5.932 ^1.843 ^1.551
execute if score #t boss_tmp matches 59 run teleport @s[tag=crawler.arm_f] ^-5.932 ^1.863 ^1.431
execute if score #t boss_tmp matches 60 run teleport @s[tag=crawler.arm_f] ^-5.932 ^1.883 ^1.321
execute if score #t boss_tmp matches 61 run teleport @s[tag=crawler.arm_f] ^-5.932 ^1.903 ^1.201
execute if score #t boss_tmp matches 62 run teleport @s[tag=crawler.arm_f] ^-5.932 ^1.913 ^1.081
execute if score #t boss_tmp matches 63 run teleport @s[tag=crawler.arm_f] ^-5.932 ^1.923 ^0.961
