#> tm_rpg:player/skill/light_cross/hit_spawn

# スキル「光の十字架」の矢が当たった相手の場所に、十字架を落とす管理役（skill4）を出す。hit_func / hit_func_enemy から呼ばれる
# storage tm_rpg:damage の p/m/c_damage は矢のダメージ（main_projectile/hit_target が入れたもの）。5/2 にして十字架1本のダメージに戻す
# この関数のあと、storage tm_rpg:damage は使われない（ダメージ計算は damage_dealt_tama が func の前にスコアへ写している。次の相手には hit_target が入れ直す）
# 入力: #skill_owner temp ＝ 撃った人の ent_id、#skill_side temp ＝ 1 なら敵が撃った矢
# @s ＝ 矢が当たった相手（at @s）

execute store result storage tm_rpg:damage p_damage int 2.5 run data get storage tm_rpg:damage p_damage
execute store result storage tm_rpg:damage m_damage int 2.5 run data get storage tm_rpg:damage m_damage
execute store result storage tm_rpg:damage c_damage int 2.5 run data get storage tm_rpg:damage c_damage
execute store result storage tm_rpg:damage sustain_power int 1 run scoreboard players get #tama_sustain_power temp
execute store result storage tm_rpg:damage sustain_time int 1 run scoreboard players get #tama_sustain_time temp
# 十字架は地面に刺さって 30 tick 残る。当たったときの関数は無い
data modify storage tm_rpg:damage kill_time set value 30
data modify storage tm_rpg:damage func set value "tm_rpg:system/naguri/non_func"

# 狙う相手（管理役が十字架を出すたびに、この ent_id の相手の今の位置を狙う）
scoreboard players operation #light_cross_target temp = @s ent_id
execute summon minecraft:marker run function tm_rpg:player/skill/light_cross/skill4
