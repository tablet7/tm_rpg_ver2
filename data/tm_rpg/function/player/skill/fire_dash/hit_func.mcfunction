#> tm_rpg:player/skill/fire_dash/hit_func

# スキル「炎の突進」が当たった相手に付ける効果。弾の func として、当たったときに system/damage_ex/damage_dealt_tama から呼ばれる（ダメージの計算より前）
# 火傷（威力 3 ＋ 撃った人の付与効果増加・3 秒 ＋ 撃った人の持続時間増加）。既に付いていれば加算する（system/abnormal/add/burn）
# #tama_sustain_power / #tama_sustain_time temp ＝ 撃った人の付与効果増加・持続時間増加（main_projectile/hit_prepare が入れる）
# @s ＝ 当たった相手（プレイヤーか敵。at @s）

scoreboard players set #ab_potency temp 3
scoreboard players operation #ab_potency temp += #tama_sustain_power temp
scoreboard players set #ab_time temp 3
scoreboard players operation #ab_time temp += #tama_sustain_time temp
function tm_rpg:system/abnormal/add/burn
