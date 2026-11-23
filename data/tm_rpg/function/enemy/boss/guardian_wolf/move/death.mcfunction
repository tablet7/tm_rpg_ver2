#> tm_rpg:enemy/boss/guardian_wolf/move/death

# 行動 7: death（50tick）のマスター側。guardian_wolf/tick から呼ばれる
# @s ＝ マスター

# 演出（ダメージは技で出す）
execute if score @s boss_t matches 25 at @s positioned ^ ^ ^ run particle minecraft:poof ~ ~1 ~ 3 0.5 3 0.05 40 force
execute if score @s boss_t matches 25 at @s positioned ^ ^ ^ run playsound minecraft:entity.wolf_big.death hostile @a ~ ~ ~ 2 0.5
execute if score @s boss_t matches 50.. run function tm_rpg:enemy/boss/guardian_wolf/death_end
