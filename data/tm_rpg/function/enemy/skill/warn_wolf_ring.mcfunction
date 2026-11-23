#> tm_rpg:enemy/skill/warn_wolf_ring

# 敵がスキル「広がる円の衝撃波」を、予兆を出してから使う関数。敵の行動の関数から呼ぶ
# 足元を中心に半径 11 マスの赤いパーティクルの輪を 1 秒出し、そのあと同じ場所・同じ向きから技を使う（enemy/skill/warn）
# この関数は2回呼ばれる: 1回目 ＝ 敵の行動から（予兆を出す）、2回目 ＝ 予兆が終わったとき enemy/skill/warn/fire から（技を使う）
# 予兆なしの入口（enemy/skill/wolf_ring）は作らない。ダメージを与える敵の技は、予兆付きのこの関数だけを敵に使わせる（追尾弾は別）
# ボス「ガーディアンウルフ」の第2形態のたたきつけ・着地に付く。弾 24 発が中心から半径 約 10.5 マスまで広がる・破裂 3・3 秒
#   例: execute as <敵> at @s run function tm_rpg:enemy/skill/warn_wolf_ring
# @s ＝ スキルを使う敵（at @s。向き ＝ 使う向き）

# ---- 2回目（予兆が終わった）: 技を使って終わる。warn/fire が選んだタイマー（tag warn_firing）がこのスキルのものかで見分ける
execute store success score #warn_fire_now temp if entity @e[type=minecraft:marker,tag=warn_firing,tag=warn_do_wolf_ring,limit=1]
# ダメージの値（skills.csv の kihon・per・damage_type・sanshou_type と同じ意味）
#   基本ダメージ / 倍率（%）/ ダメージタイプ（1 物理・2 魔法・3 確定）/ 参照ステータス（1 攻撃力・2 魔法攻撃力）
execute if score #warn_fire_now temp matches 1 run scoreboard players set @s skillselect_kihon 5
execute if score #warn_fire_now temp matches 1 run scoreboard players set @s skillselect_per 150
execute if score #warn_fire_now temp matches 1 run scoreboard players set @s skillselect_damage_type 2
execute if score #warn_fire_now temp matches 1 run scoreboard players set @s skillselect_sanshou_type 2
# 敵の攻撃力からダメージを計算し、プレイヤーと同じ本体（fire）を使う。出した弾は tag enemy_shot が付き、プレイヤーにだけ当たる
execute if score #warn_fire_now temp matches 1 run function tm_rpg:enemy/skill/start
execute if score #warn_fire_now temp matches 1 run function tm_rpg:player/skill/skill_damage
execute if score #warn_fire_now temp matches 1 run function tm_rpg:player/skill/wolf_ring/fire
execute if score #warn_fire_now temp matches 1 run return run function tm_rpg:enemy/skill/end

# ---- 1回目: 予兆を出す（大きさは 0.1 マス単位、時間は tick）
scoreboard players set #warn_time temp 20
scoreboard players set #warn_shape temp 1
scoreboard players set #warn_radius temp 110
function tm_rpg:enemy/skill/warn/start

tag @e[type=minecraft:marker,tag=warn_new,limit=1] add warn_do_wolf_ring
tag @e[type=minecraft:marker,tag=warn_new,limit=1] remove warn_new
