#> tm_rpg:enemy/boss/crawler/move/roar

# 行動 4: roar（60tick）のマスター側。crawler/tick から呼ばれる
# @s ＝ マスター

# 開始tick: 向きを決める（部位の角度は part_tick 側で揃える）
execute if score @s boss_t matches 1 run rotate @s facing entity @p[distance=..48]
execute if score @s boss_t matches 1 at @s run rotate @s ~ 0
# 攻撃判定と演出（同じtickに並べる）
execute if score @s boss_t matches 12 at @s positioned ^ ^3 ^ run playsound minecraft:entity.ravager.roar hostile @a ~ ~ ~ 3 0.5
# 攻撃判定と演出（同じtickに並べる）
execute if score @s boss_t matches 12..40 at @s positioned ^ ^ ^ run particle minecraft:dust_plume ~ ~0.2 ~ 2.5 0.2 2.5 0.02 6 force
# 攻撃判定と演出（同じtickに並べる）
execute if score @s boss_t matches 12 at @s positioned ^ ^ ^ run particle minecraft:block{block_state:"minecraft:coarse_dirt"} ~ ~0.3 ~ 2 0.2 2 0.15 40 force
# 攻撃判定と演出（同じtickに並べる）
execute if score @s boss_t matches 24 at @s positioned ^ ^ ^ run particle minecraft:block{block_state:"minecraft:coarse_dirt"} ~ ~0.3 ~ 2 0.2 2 0.15 40 force
execute if score @s boss_t matches 60.. run function tm_rpg:enemy/boss/crawler/to_idle
