#> tm_rpg:player/skill/light_cross/hit_func

# スキル「光の十字架」の矢が当たった相手への処理（プレイヤーが撃った矢）。弾の func として、当たったときに system/damage_ex/damage_dealt_tama から呼ばれる
# 当たった相手の上から十字架を3本落とす管理役を出す（hit_spawn）
# #tama_owner temp ＝ 撃った人の ent_id（main_projectile/hit_prepare が入れる）
# @s ＝ 当たった相手（at @s）

scoreboard players operation #skill_owner temp = #tama_owner temp
scoreboard players set #skill_side temp 0
function tm_rpg:player/skill/light_cross/hit_spawn
