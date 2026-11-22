#> tm_rpg:enemy/boss/guardian_wolf/death_end

# 撃破の最後（倒れる動きのあと）。guardian_wolf/death か move/death から呼ばれる
# @s ＝ マスター

# 撃破したときの処理（手で書いた関数。報酬など）。/reload や離脱では呼ばれない
function tm_rpg:enemy/boss/guardian_wolf/hook/death
particle minecraft:explosion_emitter ~ ~1 ~ 1 1 1 0 3 force
playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 2 0.6
function tm_rpg:enemy/boss/guardian_wolf/despawn
