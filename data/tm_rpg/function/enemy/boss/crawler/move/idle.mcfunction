#> tm_rpg:enemy/boss/crawler/move/idle

# 待機。crawler/tick から行動番号 1 のときに呼ばれる
# @s ＝ マスター

# 開始tick: 向きを決める（部位の角度は part_tick 側で揃える）
execute if score @s boss_t matches 1 run rotate @s facing entity @p[distance=..48]
execute if score @s boss_t matches 1 at @s run rotate @s ~ 0
execute if score @s boss_t matches 40.. run function tm_rpg:enemy/boss/crawler/choose
