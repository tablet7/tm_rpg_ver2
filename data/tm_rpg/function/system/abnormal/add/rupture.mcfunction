#> tm_rpg:system/abnormal/add/rupture

# 状態異常「破裂」を付ける共通の関数（ダメージを受けるたびに物理ダメージが威力ぶん増える）。スキルの当たったときの関数（func）などから呼ぶ
# 既に付いているときは、威力も時間も加算する（すべての状態異常で同じ決まり。system/abnormal/add/）。切れているときは、入力の値がそのまま入る
# 入力: #ab_potency temp ＝ 足す威力、#ab_time temp ＝ 足す時間（秒）
#   撃った人の付与効果増加・持続時間増加を足すときは、呼ぶ側で #tama_sustain_power / #tama_sustain_time temp（main_projectile/hit_prepare が入れる）を足しておく
# @s ＝ 状態異常を付ける相手（プレイヤーか敵）

# 切れている（時間が 1 未満・入っていない）ときは 0 から始める（切れたあとの時間は -1 で止まっている）
execute unless score @s rupture_time matches 1.. run scoreboard players set @s rupture_potency 0
execute unless score @s rupture_time matches 1.. run scoreboard players set @s rupture_time 0

scoreboard players operation @s rupture_potency += #ab_potency temp
scoreboard players operation @s rupture_time += #ab_time temp
