#> tm_rpg:enemy/skill/warn_light_cross_fall

# 敵のスキル「光の十字架」の、十字架1本ぶんの予兆と落下。player/skill/light_cross/skill3（敵の矢が当たったあと、管理役が3 tick ごと）から、敵として呼ばれる
# 落ちる先（その時のプレイヤーの足元）に半径 1.5 マスの赤い輪を 0.75 秒出し、そのあと輪の場所へ十字架を1本落とす（enemy/skill/warn）
# この関数は2回呼ばれる: 1回目 ＝ skill3 から（予兆を出す）、2回目 ＝ 予兆が終わったとき enemy/skill/warn/fire から（十字架を落とす）
# 落ちる先は輪の場所で固定（プレイヤーは動けば避けられる）。敵は予兆のあいだ自分から歩かない（warn/start）
# 敵の行動から直接は呼ばない（光の矢の入口は enemy/skill/warn_light_cross）
# @s ＝ 矢を撃った敵（実行位置 ＝ 落ちる先の足元）

# ---- 2回目（予兆が終わった）: 十字架を落とす
execute store success score #warn_fire_now temp if entity @e[type=minecraft:marker,tag=warn_firing,tag=warn_do_light_cross_fall,limit=1]
# ダメージの値（十字架1本ぶん）: 基本ダメージ / 倍率（%）/ ダメージタイプ（2 魔法）/ 参照ステータス（2 魔法攻撃力）
execute if score #warn_fire_now temp matches 1 run scoreboard players set @s skillselect_kihon 5
execute if score #warn_fire_now temp matches 1 run scoreboard players set @s skillselect_per 150
execute if score #warn_fire_now temp matches 1 run scoreboard players set @s skillselect_damage_type 2
execute if score #warn_fire_now temp matches 1 run scoreboard players set @s skillselect_sanshou_type 2
execute if score #warn_fire_now temp matches 1 run function tm_rpg:enemy/skill/start
execute if score #warn_fire_now temp matches 1 run function tm_rpg:player/skill/skill_damage
execute if score #warn_fire_now temp matches 1 run data modify storage tm_rpg:damage kill_time set value 30
execute if score #warn_fire_now temp matches 1 run data modify storage tm_rpg:damage func set value "tm_rpg:system/naguri/non_func"
execute if score #warn_fire_now temp matches 1 run scoreboard players set #light_cross_tick temp 0
execute if score #warn_fire_now temp matches 1 run function tm_rpg:player/skill/light_cross/fall
execute if score #warn_fire_now temp matches 1 run return run function tm_rpg:enemy/skill/end

# ---- 1回目: 予兆を出す（大きさは 0.1 マス単位、時間は tick）
scoreboard players set #warn_time temp 15
scoreboard players set #warn_shape temp 1
scoreboard players set #warn_radius temp 15
function tm_rpg:enemy/skill/warn/start

tag @e[type=minecraft:marker,tag=warn_new,limit=1] add warn_do_light_cross_fall
tag @e[type=minecraft:marker,tag=warn_new,limit=1] remove warn_new
