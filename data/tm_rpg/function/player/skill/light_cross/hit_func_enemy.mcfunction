#> tm_rpg:player/skill/light_cross/hit_func_enemy

# スキル「光の十字架」の矢が当たった相手への処理（敵が撃った矢）。弾の func として、当たったときに system/damage_ex/damage_dealt_tama から呼ばれる
# 管理役に tag enemy_shot が付き、十字架1本ごとに落ちる先へ予兆の輪を出す（skill3 → enemy/skill/warn_light_cross_fall）
# 弾の func からは撃った側が分からないので、fire が側ごとに別の func を入れている
# @s ＝ 当たったプレイヤー（at @s）

scoreboard players operation #skill_owner temp = #tama_owner temp
scoreboard players set #skill_side temp 1
function tm_rpg:player/skill/light_cross/hit_spawn
scoreboard players set #skill_side temp 0
