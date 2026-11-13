#> tm_rpg:enemy/boss/crawler/move/sweep_parts

# 行動 2: sweep の部位側（回転と一時的な移動）。crawler/part_tick から呼ばれる
# @s ＝ 部位。実行位置と向きはマスターのもの。#t ＝ この行動に入ってからのtick数

# 回転（1tickあたりの yaw pitch。pitch は負で上向き）。rotated as @s で部位自身の角度を基準にする
execute if score #t boss_tmp matches 1..14 rotated as @s run rotate @s[tag=crawler.arm_u] ~2.86 ~-0.71
execute if score #t boss_tmp matches 23..26 rotated as @s run rotate @s[tag=crawler.arm_u] ~-27.5 ~2.5
execute if score #t boss_tmp matches 45..60 rotated as @s run rotate @s[tag=crawler.arm_u] ~4.38 ~
execute if score #t boss_tmp matches 61 rotated as @s run rotate @s[tag=crawler.arm_u] ~ 0
execute if score #t boss_tmp matches 1..14 rotated as @s run rotate @s[tag=crawler.arm_f] ~2.86 ~-2.5
execute if score #t boss_tmp matches 23..26 rotated as @s run rotate @s[tag=crawler.arm_f] ~-27.5 ~5.75
execute if score #t boss_tmp matches 45..60 rotated as @s run rotate @s[tag=crawler.arm_f] ~4.38 ~0.75
execute if score #t boss_tmp matches 61 rotated as @s run rotate @s[tag=crawler.arm_f] ~ 0
execute if score #t boss_tmp matches 1..14 rotated as @s run rotate @s[tag=crawler.head] ~1.07 ~
execute if score #t boss_tmp matches 23..26 rotated as @s run rotate @s[tag=crawler.head] ~-8.75 ~
execute if score #t boss_tmp matches 45..60 rotated as @s run rotate @s[tag=crawler.head] ~1.25 ~
execute if score #t boss_tmp matches 61 rotated as @s run rotate @s[tag=crawler.head] ~ 0
execute if score #t boss_tmp matches 1..14 rotated as @s run rotate @s[tag=crawler.jaw] ~1.07 ~
execute if score #t boss_tmp matches 23..26 rotated as @s run rotate @s[tag=crawler.jaw] ~-8.75 ~
execute if score #t boss_tmp matches 45..60 rotated as @s run rotate @s[tag=crawler.jaw] ~1.25 ~
execute if score #t boss_tmp matches 61 rotated as @s run rotate @s[tag=crawler.jaw] ~ 0
# 一時的な移動（定位置からのずれ。part_tick の配置を上書きする）
execute if score #t boss_tmp matches 1 run teleport @s[tag=crawler.arm_f] ^-5.922 ^1.923 ^0.651
execute if score #t boss_tmp matches 2 run teleport @s[tag=crawler.arm_f] ^-5.912 ^1.923 ^0.461
execute if score #t boss_tmp matches 3 run teleport @s[tag=crawler.arm_f] ^-5.882 ^1.923 ^0.271
execute if score #t boss_tmp matches 4 run teleport @s[tag=crawler.arm_f] ^-5.842 ^1.923 ^0.091
execute if score #t boss_tmp matches 5 run teleport @s[tag=crawler.arm_f] ^-5.792 ^1.913 ^-0.089
execute if score #t boss_tmp matches 6 run teleport @s[tag=crawler.arm_f] ^-5.732 ^1.913 ^-0.269
execute if score #t boss_tmp matches 7 run teleport @s[tag=crawler.arm_f] ^-5.652 ^1.913 ^-0.449
execute if score #t boss_tmp matches 8 run teleport @s[tag=crawler.arm_f] ^-5.572 ^1.903 ^-0.619
execute if score #t boss_tmp matches 9 run teleport @s[tag=crawler.arm_f] ^-5.482 ^1.903 ^-0.779
execute if score #t boss_tmp matches 10 run teleport @s[tag=crawler.arm_f] ^-5.372 ^1.903 ^-0.939
execute if score #t boss_tmp matches 11 run teleport @s[tag=crawler.arm_f] ^-5.262 ^1.893 ^-1.099
execute if score #t boss_tmp matches 12 run teleport @s[tag=crawler.arm_f] ^-5.142 ^1.883 ^-1.239
execute if score #t boss_tmp matches 13 run teleport @s[tag=crawler.arm_f] ^-5.012 ^1.883 ^-1.379
execute if score #t boss_tmp matches 14..22 run teleport @s[tag=crawler.arm_f] ^-4.872 ^1.873 ^-1.509
execute if score #t boss_tmp matches 23 run teleport @s[tag=crawler.arm_f] ^-5.772 ^1.893 ^-0.219
execute if score #t boss_tmp matches 24 run teleport @s[tag=crawler.arm_f] ^-5.902 ^1.913 ^1.351
execute if score #t boss_tmp matches 25 run teleport @s[tag=crawler.arm_f] ^-5.242 ^1.923 ^2.761
execute if score #t boss_tmp matches 26..44 run teleport @s[tag=crawler.arm_f] ^-3.962 ^1.923 ^3.661
execute if score #t boss_tmp matches 45 run teleport @s[tag=crawler.arm_f] ^-4.172 ^1.923 ^3.571
execute if score #t boss_tmp matches 46 run teleport @s[tag=crawler.arm_f] ^-4.372 ^1.923 ^3.471
execute if score #t boss_tmp matches 47 run teleport @s[tag=crawler.arm_f] ^-4.572 ^1.923 ^3.351
execute if score #t boss_tmp matches 48 run teleport @s[tag=crawler.arm_f] ^-4.762 ^1.923 ^3.221
execute if score #t boss_tmp matches 49 run teleport @s[tag=crawler.arm_f] ^-4.932 ^1.923 ^3.071
execute if score #t boss_tmp matches 50 run teleport @s[tag=crawler.arm_f] ^-5.102 ^1.923 ^2.911
execute if score #t boss_tmp matches 51 run teleport @s[tag=crawler.arm_f] ^-5.252 ^1.923 ^2.741
execute if score #t boss_tmp matches 52 run teleport @s[tag=crawler.arm_f] ^-5.392 ^1.923 ^2.561
execute if score #t boss_tmp matches 53 run teleport @s[tag=crawler.arm_f] ^-5.512 ^1.923 ^2.371
execute if score #t boss_tmp matches 54 run teleport @s[tag=crawler.arm_f] ^-5.622 ^1.923 ^2.171
execute if score #t boss_tmp matches 55 run teleport @s[tag=crawler.arm_f] ^-5.712 ^1.923 ^1.961
execute if score #t boss_tmp matches 56 run teleport @s[tag=crawler.arm_f] ^-5.792 ^1.923 ^1.741
execute if score #t boss_tmp matches 57 run teleport @s[tag=crawler.arm_f] ^-5.852 ^1.923 ^1.521
execute if score #t boss_tmp matches 58 run teleport @s[tag=crawler.arm_f] ^-5.902 ^1.923 ^1.301
execute if score #t boss_tmp matches 59 run teleport @s[tag=crawler.arm_f] ^-5.922 ^1.923 ^1.071
