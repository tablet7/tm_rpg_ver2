#> tm_rpg:enemy/boss/crawler/move/sweep

# 行動 2: sweep（66tick）のマスター側。crawler/tick から呼ばれる
# @s ＝ マスター

# 開始tick: 向きを決める（部位の角度は part_tick 側で揃える）
execute if score @s boss_t matches 1 run rotate @s facing entity @p[distance=..48]
execute if score @s boss_t matches 1 at @s run rotate @s ~ 0
# 攻撃判定と演出（同じtickに並べる）
execute if score @s boss_t matches 24 at @s positioned ^ ^ ^ run particle minecraft:sweep_attack ^-4.93 ^2.71 ^4.97 1 0.4 1 0 4 force
# 攻撃判定と演出（同じtickに並べる）
execute if score @s boss_t matches 25 at @s positioned ^ ^ ^ run particle minecraft:sweep_attack ^-2.86 ^2.35 ^5.36 1 0.4 1 0 4 force
# 攻撃判定と演出（同じtickに並べる）
execute if score @s boss_t matches 26 at @s positioned ^ ^ ^ run particle minecraft:sweep_attack ^-0.9 ^2.02 ^4.77 1 0.4 1 0 4 force
# 攻撃判定と演出（同じtickに並べる）
execute if score @s boss_t matches 24 at @s positioned ^ ^ ^3 run playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 2 0.5
execute if score @s boss_t matches 66.. run function tm_rpg:enemy/boss/crawler/to_idle
