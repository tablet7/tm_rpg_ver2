#> tm_rpg:player/skill/common/push_one

# 敵1体を、実行時の横の向きへ吹き飛ばす。player/skill/common/push_away から呼ばれる
# @s ＝ 吹き飛ばす敵（向き ＝ 使った人から離れる向き）。#push_speed temp ＝ 横の速さ（0.01 ブロック/tick）

# プレイヤーは Motion を書きかえられないので飛ばさない
execute if entity @s[type=minecraft:player] run return 0

scoreboard players set @s dash_x 0
scoreboard players set @s dash_y 40
scoreboard players operation @s dash_z = #push_speed temp
function tm_rpg:enemy/skill/move/impulse

scoreboard players add #push_count temp 1
# 呼び出し元は as だけで at を付けていない（向きを使うため、実行位置は使った人のまま）。演出は敵の位置に出す
execute at @s run particle minecraft:gust ~ ~1 ~ 0 0 0 0 1
