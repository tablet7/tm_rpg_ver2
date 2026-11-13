#> tm_rpg:enemy/boss/crawler/move/roar_parts

# 行動 4: roar の部位側（回転と一時的な移動）。crawler/part_tick から呼ばれる
# @s ＝ 部位。実行位置と向きはマスターのもの。#t ＝ この行動に入ってからのtick数

# 回転（1tickあたりの yaw pitch。pitch は負で上向き）。rotated as @s で部位自身の角度を基準にする
execute if score #t boss_tmp matches 1..10 rotated as @s run rotate @s[tag=crawler.head] ~ ~-3.5
execute if score #t boss_tmp matches 41..52 rotated as @s run rotate @s[tag=crawler.head] ~ ~2.92
execute if score #t boss_tmp matches 53 rotated as @s run rotate @s[tag=crawler.head] ~ 0
execute if score #t boss_tmp matches 1..10 rotated as @s run rotate @s[tag=crawler.jaw] ~ ~0.5
execute if score #t boss_tmp matches 41..52 rotated as @s run rotate @s[tag=crawler.jaw] ~ ~-0.42
execute if score #t boss_tmp matches 53 rotated as @s run rotate @s[tag=crawler.jaw] ~ 0
