#> tm_rpg:player/skill/wolf_ring/hit_func

# ボス「ガーディアンウルフ」の技が当たった相手に付ける効果。当たったときに system/damage_ex/damage_dealt（弾は damage_dealt_tama）から func として呼ばれる（ダメージの計算より前）
# 破裂（威力 3・3 秒）。既に付いていれば加算する（system/abnormal/add/rupture）
# ボスの付与効果増加・持続時間増加は足さない（決めた値のまま）
# @s ＝ 当たった相手（プレイヤー。at @s）

scoreboard players set #ab_potency temp 3
scoreboard players set #ab_time temp 3
function tm_rpg:system/abnormal/add/rupture
