#> tm_rpg:enemy/skill/warn/init_marker

# 予兆のタイマー（marker）の初期設定。enemy/skill/warn/start から execute summon ... run function で呼ばれる
# #warn_time temp ＝ 技を出すまでの tick、#warn_owner temp ＝ 技を使う敵の ent_id（start が入れる）
# @s ＝ 出したばかりの marker。実行位置 ＝ 技を出す場所、向き ＝ 技を出す向き

rotate @s ~ ~

tag @s add warn_marker
tag @s add warn_new
scoreboard players operation @s warn_timer = #warn_time temp

# 技を使う敵
scoreboard players operation @s summon_ent_id = #warn_owner temp

# 念のため: 敵がいなくなったりして残ったときも消えるように（tag delete_entity は main の system kill が kill_time で消す）
tag @s add delete_entity
scoreboard players operation @s kill_time = #warn_time temp
scoreboard players add @s kill_time 5
