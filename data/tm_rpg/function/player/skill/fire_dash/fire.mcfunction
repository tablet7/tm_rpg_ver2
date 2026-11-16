#> tm_rpg:player/skill/fire_dash/fire

# スキル「炎の突進」の本体（ダメージ計算のあと）。プレイヤーは skill1 から、敵は enemy/skill/warn_fire_dash（予兆のあと）から呼ばれる
# 先に storage tm_rpg:damage（p/m/c_damage・sustain_power・sustain_time）と #skill_owner temp・#skill_side temp を入れておくこと（ダメージは player/skill/skill_damage）
# プレイヤー: 10 tick 溜める（そのあいだ歩けない。向きは変えられる）→ そのときの向きへ突進する
# 敵: 予兆（1 秒）のあいだに溜め終わっている（warn_fire_dash が溜めの演出を出す）ので、すぐ突進する
# @s ＝ 使ったプレイヤーか敵（at @s。向き ＝ 使う向き）

# 当たり判定が付いて行く tick（10。突進はおよそ 8 tick で止まる）
data modify storage tm_rpg:damage kill_time set value 10
# 当たった相手に付ける火傷（弾が持ち、当たるたびに相手を @s にして呼ばれる）
data modify storage tm_rpg:damage func set value "tm_rpg:player/skill/fire_dash/hit_func"

# 敵: すぐ突進する。突進のあいだ（12 tick）自分から歩かない（enemy/skill/end → enemy/skill/lock）
execute if score #skill_side temp matches 1 run scoreboard players set #skill_lock temp 12
execute if score #skill_side temp matches 1 run return run function tm_rpg:player/skill/fire_dash/dash

# プレイヤー: 溜めのあいだ（10 tick）歩けない（enemy/skill/lock。player/main が残りを減らす）
scoreboard players set #skill_lock temp 10
function tm_rpg:enemy/skill/lock

# 溜めの管理役（10 tick 後に、使った人をダッシュさせる。skill2・skill3）
execute summon minecraft:marker run function tm_rpg:player/skill/fire_dash/skill2

# 使ったときの演出（溜め。使った人に付いて行く）
function tm_rpg:player/skill/fire_dash/fx/cast
