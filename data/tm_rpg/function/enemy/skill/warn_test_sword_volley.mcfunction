#> tm_rpg:enemy/skill/warn_test_sword_volley

# 敵がスキル「test剣の一斉射撃」を、予兆を出してから使う関数。敵の行動の関数から呼ぶ
# 剣が刺さる場所（前方 3〜25.5 マスに 2.5 マスごと。player/skill/test_sword_volley/skill2・fire の 10 本）に、前方 2〜26.5 マス・幅 3 マスの赤い板を 1.5 秒出し、
# そのあと同じ場所・同じ向きから enemy/skill/test_sword_volley を使う（enemy/skill/warn）
#   例: execute as <敵> at @s facing entity @p[distance=..30] feet run function tm_rpg:enemy/skill/warn_test_sword_volley
# @s ＝ スキルを使う敵（at @s。向き ＝ 使う向き）

scoreboard players set #warn_time temp 30
scoreboard players set #warn_shape temp 0
scoreboard players set #warn_width temp 30
scoreboard players set #warn_length temp 245
scoreboard players set #warn_center temp 0
scoreboard players set #warn_offset temp 20
function tm_rpg:enemy/skill/warn/start

tag @e[type=minecraft:marker,tag=warn_new,limit=1] add warn_do_test_sword_volley
tag @e[type=minecraft:marker,tag=warn_new,limit=1] remove warn_new
