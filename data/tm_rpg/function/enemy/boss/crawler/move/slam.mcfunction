#> tm_rpg:enemy/boss/crawler/move/slam

# 行動 3: slam（72tick）のマスター側。crawler/tick から呼ばれる
# @s ＝ マスター

# 開始tick: 向きを決める（部位の角度は part_tick 側で揃える）
execute if score @s boss_t matches 1 run rotate @s facing entity @p[distance=..48]
execute if score @s boss_t matches 1 at @s run rotate @s ~ 0
# 攻撃判定と演出（同じtickに並べる）
execute if score @s boss_t matches 29 at @s positioned ^ ^ ^ run particle minecraft:explosion ^-5.93 ^0.3 ^3.71 1 0.2 1 0 4 force
execute if score @s boss_t matches 29 at @s positioned ^ ^ ^ run playsound minecraft:entity.warden.attack_impact hostile @a ~ ~ ~ 2 0.6
# 攻撃判定と演出（同じtickに並べる）
execute if score @s boss_t matches 29 at @s positioned ^ ^ ^ run particle minecraft:block{block_state:"minecraft:cracked_stone_bricks"} ^-5.93 ^0.3 ^3.71 1.5 0.1 1.5 0.2 80 force
# 攻撃判定と演出（同じtickに並べる）
execute if score @s boss_t matches 29..34 at @s positioned ^ ^ ^ run particle minecraft:dust_plume ^-5.93 ^0.3 ^3.71 1.2 0.1 1.2 0.03 8 force
execute if score @s boss_t matches 72.. run function tm_rpg:enemy/boss/crawler/to_idle
