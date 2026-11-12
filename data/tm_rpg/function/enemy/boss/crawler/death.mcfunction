#> tm_rpg:enemy/boss/crawler/death

# 撃破演出。crawler/tick から呼ばれる
# @s ＝ マスター

particle minecraft:explosion_emitter ~ ~1 ~ 1 1 1 0 3 force
playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 2 0.6
function tm_rpg:enemy/boss/crawler/despawn
