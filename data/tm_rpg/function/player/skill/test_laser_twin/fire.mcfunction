#> tm_rpg:player/skill/test_laser_twin/fire

# スキル「test双子レーザー」の本体（ダメージ計算のあと）。プレイヤーは skill1 から、敵は enemy/skill/warn_test_laser_twin（予兆のあと）から呼ばれる
# 先に storage tm_rpg:damage（p/m/c_damage・func）と #skill_owner temp・#skill_side temp を入れておくこと（ダメージは player/skill/skill_damage）
# @s ＝ 使ったプレイヤーか敵（at @s。向き ＝ 使う向き。レーザーの円の中心になる）

# 2つで1組: 自分の古いタレットとそのレーザー（tag laser_twin）を消す（新しいのを出す前に。あとで消すと新しいのも消える）
execute as @e[type=minecraft:item_display,tag=laser_twin] if score @s summon_ent_id = #skill_owner temp run kill @s

# タレットもレーザーも 3 秒（60 tick）で消える
data modify storage tm_rpg:damage kill_time set value 60

# 右のタレット（右回り）と左のタレット（左回り）。^ の左右は + が左
scoreboard players set #twin_dir temp 1
execute positioned ^-1.5 ^ ^ summon minecraft:item_display run function tm_rpg:player/skill/test_laser_twin/skill2
scoreboard players set #twin_dir temp -1
execute positioned ^1.5 ^ ^ summon minecraft:item_display run function tm_rpg:player/skill/test_laser_twin/skill2
