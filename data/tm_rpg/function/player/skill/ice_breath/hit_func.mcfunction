#> tm_rpg:player/skill/ice_breath/hit_func

# スキル「氷のブレス」が当たった相手に付ける効果。弾の func として、当たるたびに system/damage_ex/damage_dealt_tama から呼ばれる（ダメージの計算より前）
# 鈍足 1 を 2 秒（増えない）と、沈潜（威力 3 ＋ 撃った人の付与効果増加・3 秒 ＋ 撃った人の持続時間増加）を付ける
# 沈潜は、既に付いていれば加算する（system/abnormal/add/sinking）。7 回当たれば 7 回ぶん積み上がる
# #tama_sustain_power / #tama_sustain_time temp ＝ 撃った人の付与効果増加・持続時間増加（main_projectile/hit_prepare が入れる）
# @s ＝ 当たった相手（プレイヤーか敵。at @s）

# 鈍足 1（amplifier 0）を 2 秒
effect give @s minecraft:slowness 2 0

# 沈潜: 威力 3 ＋ 付与効果増加、時間 3 秒 ＋ 持続時間増加
scoreboard players set #ab_potency temp 3
scoreboard players operation #ab_potency temp += #tama_sustain_power temp
scoreboard players set #ab_time temp 3
scoreboard players operation #ab_time temp += #tama_sustain_time temp
function tm_rpg:system/abnormal/add/sinking
