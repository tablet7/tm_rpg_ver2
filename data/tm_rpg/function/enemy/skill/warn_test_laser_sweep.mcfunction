#> tm_rpg:enemy/skill/warn_test_laser_sweep

# 敵がスキル「test振り上げレーザー」を、予兆を出してから使う関数。敵の行動の関数から呼ぶ
# 前方 0〜21.5 マス・幅 4 マスの赤い板を 1.5 秒出し、そのあと同じ場所・同じ向きから技を使う（enemy/skill/warn）
# この関数は2回呼ばれる: 1回目 ＝ 敵の行動から（予兆を出す）、2回目 ＝ 予兆が終わったとき enemy/skill/warn/fire から（技を使う）
# 予兆なしの入口（enemy/skill/test_laser_sweep）は作らない。ダメージを与える敵の技は、予兆付きのこの関数だけを敵に使わせる（追尾弾は別）
# レーザーは目の 1 マス前から長さ 20 マス・太さ 3 マスで、下向き 40 度から上へ振り上がる（player/skill/test_laser_sweep/fire・skill2）。板はその通り道を地面に写したもの
#   目の高さから撃つので、敵の目の位置から狙う（anchored eyes。足元から狙うと目の高さぶん上を通る。anchored feet で戻す）
#   例: execute as <敵> at @s anchored eyes facing entity @p[distance=..16] eyes anchored feet run function tm_rpg:enemy/skill/warn_test_laser_sweep
# @s ＝ スキルを使う敵（at @s。向き ＝ 使う向き）

# ---- 2回目（予兆が終わった）: 技を使って終わる。warn/fire が選んだタイマー（tag warn_firing）がこのスキルのものかで見分ける
execute store success score #warn_fire_now temp if entity @e[type=minecraft:marker,tag=warn_firing,tag=warn_do_test_laser_sweep,limit=1]
# ダメージの値（skills.csv の kihon・per・damage_type・sanshou_type と同じ意味）
#   基本ダメージ / 倍率（%）/ ダメージタイプ（1 物理・2 魔法・3 確定）/ 参照ステータス（1 攻撃力・2 魔法攻撃力）
execute if score #warn_fire_now temp matches 1 run scoreboard players set @s skillselect_kihon 5
execute if score #warn_fire_now temp matches 1 run scoreboard players set @s skillselect_per 150
execute if score #warn_fire_now temp matches 1 run scoreboard players set @s skillselect_damage_type 1
execute if score #warn_fire_now temp matches 1 run scoreboard players set @s skillselect_sanshou_type 1
# 敵の攻撃力からダメージを計算し、プレイヤーと同じ本体（fire）を使う。出した弾は tag enemy_shot が付き、プレイヤーにだけ当たる
execute if score #warn_fire_now temp matches 1 run function tm_rpg:enemy/skill/start
execute if score #warn_fire_now temp matches 1 run function tm_rpg:player/skill/skill_damage
execute if score #warn_fire_now temp matches 1 run function tm_rpg:player/skill/test_laser_sweep/fire
execute if score #warn_fire_now temp matches 1 run return run function tm_rpg:enemy/skill/end

# ---- 1回目: 予兆を出す（大きさは 0.1 マス単位、時間は tick）
scoreboard players set #warn_time temp 30
scoreboard players set #warn_shape temp 0
scoreboard players set #warn_width temp 40
scoreboard players set #warn_length temp 215
scoreboard players set #warn_center temp 0
scoreboard players set #warn_offset temp 0
function tm_rpg:enemy/skill/warn/start

tag @e[type=minecraft:marker,tag=warn_new,limit=1] add warn_do_test_laser_sweep
tag @e[type=minecraft:marker,tag=warn_new,limit=1] remove warn_new
