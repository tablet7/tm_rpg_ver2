#> tm_rpg:player/skill/main_projectile/hit_target

# 弾が当たった敵1体にダメージを与える関数。main_projectile/hit から呼ばれる
# 先に main_projectile/hit_prepare でダメージ（#tama_p/m/c temp）と関数（storage tm_rpg:tama func）を用意しておくこと
# @s ＝ 当たった敵（at @s）

# この弾にはもう当たった（貫通する弾が同じ敵に何度も当たらないように）
scoreboard players operation @s tama_hit_id = #tama_id temp
scoreboard players add #tama_hit temp 1

# 前の敵の処理で storage が書き換わっていても同じダメージになるように、敵ごとに入れ直す
execute store result storage tm_rpg:damage p_damage int 1 run scoreboard players get #tama_p temp
execute store result storage tm_rpg:damage m_damage int 1 run scoreboard players get #tama_m temp
execute store result storage tm_rpg:damage c_damage int 1 run scoreboard players get #tama_c temp
data modify storage tm_rpg:damage func set from storage tm_rpg:tama func

function tm_rpg:system/damage_ex/damage_dealt_tama
