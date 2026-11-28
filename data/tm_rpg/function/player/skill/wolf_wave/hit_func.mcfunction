#> tm_rpg:player/skill/wolf_wave/hit_func

# ボス「ガーディアンウルフ」の技が当たった相手に付ける効果。当たったときに system/damage_ex/damage_dealt（弾は damage_dealt_tama）から func として呼ばれる（ダメージの計算より前）
# 破裂（威力 3 ＋ ボスの付与効果増加・3 秒 ＋ ボスの持続時間増加）。既に付いていれば加算する（system/abnormal/add/rupture。威力は受けた人の付与効果増加で弱まる）
# #tama_sustain_power / #tama_sustain_time temp ＝ 撃ったボスの付与効果増加・持続時間増加（main_projectile/hit_prepare が入れる）
# @s ＝ 当たった相手（プレイヤー。at @s）

scoreboard players set #ab_potency temp 3
scoreboard players operation #ab_potency temp += #tama_sustain_power temp
scoreboard players set #ab_time temp 3
scoreboard players operation #ab_time temp += #tama_sustain_time temp
function tm_rpg:system/abnormal/add/rupture
