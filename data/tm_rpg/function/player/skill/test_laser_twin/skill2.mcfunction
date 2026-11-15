#> tm_rpg:player/skill/test_laser_twin/skill2

# スキル「test双子レーザー」のタレットの設定。fire から execute summon ... run function で呼ばれる
# タレットは見た目だけ（当たり判定なし）。kill_time で消える（main の system kill）。置いたときに円を描くレーザーを1本出す（skill3）
# #twin_dir temp ＝ レーザーの回る向き（1 ＝ 右回り、-1 ＝ 左回り）
# @s ＝ 出したばかりのタレット（item_display）。実行位置 ＝ 使った人の足元の高さで左右 1.5 マス、向き ＝ 使う向き

# 向きを使う向きの横の向きに合わせる
rotate @s ~ 0

# kill_time で消える・同じ人の古いタレットを消すためのタグ（tag laser_twin と summon_ent_id）
tag @s add delete_entity
tag @s add laser_twin
scoreboard players operation @s summon_ent_id = #skill_owner temp
execute store result score @s kill_time run data get storage tm_rpg:damage kill_time

# 見た目（ディスペンサーを 1 マス浮かせる。口が使う向きを向く）
data merge entity @s {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,0f],scale:[0.8f,0.8f,0.8f]},item:{id:"minecraft:dispenser",count:1}}

# レーザー（ディスペンサーの中心の高さから、使う向きに少し前へ出して出す。使う向きが円の中心）
execute positioned ~ ~1 ~ positioned ^ ^ ^0.6 summon minecraft:item_display run function tm_rpg:player/skill/test_laser_twin/skill3
