#> tm_rpg:enemy/skill/warn_test_push

# 敵がスキル「test吹き飛ばし」を、予兆を出してから使う関数。敵の行動の関数から呼ぶ
# 足元を中心に 10 マス四方（吹き飛ばしがとどく 5 マス）の赤い板を 1 秒出し、そのあと同じ場所から enemy/skill/test_push を使う（enemy/skill/warn）
#   例: execute as <敵> at @s run function tm_rpg:enemy/skill/warn_test_push
# @s ＝ スキルを使う敵（at @s）

scoreboard players set #warn_time temp 20
scoreboard players set #warn_width temp 100
scoreboard players set #warn_length temp 100
scoreboard players set #warn_center temp 1
function tm_rpg:enemy/skill/warn/start

tag @e[type=minecraft:marker,tag=warn_new,limit=1] add warn_do_test_push
tag @e[type=minecraft:marker,tag=warn_new,limit=1] remove warn_new
