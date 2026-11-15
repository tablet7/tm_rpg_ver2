#> tm_rpg:enemy/skill/warn_test_laser

# 敵がスキル「test太いレーザー」を、予兆を出してから使う関数。敵の行動の関数から呼ぶ
# 足元から前へ幅 3 マス・長さ 20 マスの赤い板を 1.5 秒出し、そのあと同じ場所・同じ向きから enemy/skill/test_laser を使う（enemy/skill/warn）
#   例: execute as <敵> at @s facing entity @p[distance=..16] eyes run function tm_rpg:enemy/skill/warn_test_laser
# @s ＝ スキルを使う敵（at @s。向き ＝ 使う向き）

scoreboard players set #warn_time temp 30
scoreboard players set #warn_width temp 30
scoreboard players set #warn_length temp 200
scoreboard players set #warn_center temp 0
function tm_rpg:enemy/skill/warn/start

tag @e[type=minecraft:marker,tag=warn_new,limit=1] add warn_do_test_laser
tag @e[type=minecraft:marker,tag=warn_new,limit=1] remove warn_new
