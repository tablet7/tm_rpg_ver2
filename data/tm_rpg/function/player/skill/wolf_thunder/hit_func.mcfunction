#> tm_rpg:player/skill/wolf_thunder/hit_func

# ボス「ガーディアンウルフ」の技が当たった相手に付ける効果。当たったときに system/damage_ex/damage_dealt（弾は damage_dealt_tama）から func として呼ばれる（ダメージの計算より前）
# 破裂（威力 3 ＋ ボスの付与効果増加・3 秒 ＋ ボスの持続時間増加）。既に付いていれば加算する（system/abnormal/add/rupture。威力は受けた人の付与効果増加で弱まる）
# 弾を使わない技なので、ボスの付与効果増加・持続時間増加は storage tm_rpg:damage の sustain_power / sustain_time（予兆付きの入口が player/skill/skill_damage で入れる）から読む
# @s ＝ 当たった相手（プレイヤー。at @s）

execute store result score #ab_potency temp run data get storage tm_rpg:damage sustain_power
scoreboard players add #ab_potency temp 3
execute store result score #ab_time temp run data get storage tm_rpg:damage sustain_time
scoreboard players add #ab_time temp 3
function tm_rpg:system/abnormal/add/rupture
