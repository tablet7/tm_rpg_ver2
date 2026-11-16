#> tm_rpg:player/skill/light_cross/fire

# スキル「光の十字架」の本体（ダメージ計算のあと）。プレイヤーは skill1 から、敵は enemy/skill/warn_light_cross（予兆のあと）から呼ばれる
# 先に storage tm_rpg:damage（p/m/c_damage・sustain_power・sustain_time）と #skill_owner temp・#skill_side temp を入れておくこと（ダメージは player/skill/skill_damage）
# 目の高さから向いている方向へ光の矢を出す（1 マス/tick・20 tick ＝ 射程 約 20 マス。壁で止まる。最初に当たった1体で消える）
# @s ＝ 使ったプレイヤーか敵（at @s。向き ＝ 使う向き）

# 消えるまでの tick（20。1 マス/tick なので射程は約 20 マス）
data modify storage tm_rpg:damage kill_time set value 20

# 矢のダメージは十字架1本の 2/5（基本 5・150% のとき、基本 2・60% ＝ 基本 3・100% くらい）。当たったとき hit_spawn が 5/2 にして十字架に渡す
execute store result storage tm_rpg:damage p_damage int 0.4 run data get storage tm_rpg:damage p_damage
execute store result storage tm_rpg:damage m_damage int 0.4 run data get storage tm_rpg:damage m_damage
execute store result storage tm_rpg:damage c_damage int 0.4 run data get storage tm_rpg:damage c_damage

# 当たったとき、その相手に十字架を落とす（敵の矢は、十字架の前に予兆の輪を出す hit_func_enemy）
data modify storage tm_rpg:damage func set value "tm_rpg:player/skill/light_cross/hit_func"
execute if score #skill_side temp matches 1 run data modify storage tm_rpg:damage func set value "tm_rpg:player/skill/light_cross/hit_func_enemy"

# 光の矢（出したばかりの矢が @s になって skill2 が動く）
execute anchored eyes positioned ^ ^ ^0.5 summon minecraft:item_display run function tm_rpg:player/skill/light_cross/skill2

# 使ったときの演出
function tm_rpg:player/skill/light_cross/fx/cast
