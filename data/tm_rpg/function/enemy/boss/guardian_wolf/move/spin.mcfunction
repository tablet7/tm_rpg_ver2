#> tm_rpg:enemy/boss/guardian_wolf/move/spin

# 行動 4: spin（45tick）のマスター側。guardian_wolf/tick から呼ばれる
# @s ＝ マスター

# 開始tick: 向きを決める
execute if score @s boss_t matches 1 run rotate @s facing entity @p[gamemode=!spectator,distance=..48]
execute if score @s boss_t matches 1 at @s run rotate @s ~ 0
# 体ごと回る（1tickあたりの角度。+ で右回り）
execute if score @s boss_t matches 21..32 rotated as @s run rotate @s ~30 0
# 地面に沿わせる
function tm_rpg:enemy/boss/guardian_wolf/ground
# tm_rpg のスキルを使う（本体の当たり判定として）
execute if score @s boss_t matches 1 at @s as @e[type=#tm_rpg:guardian_wolf_part,tag=guardian_wolf.core,distance=..48,limit=1] run function tm_rpg:enemy/skill/warn_wolf_tail
execute if score @s boss_t matches 45.. if score @s boss_phase matches 2.. unless score @s boss_rep matches 1 run return run function tm_rpg:enemy/boss/guardian_wolf/repeat
execute if score @s boss_t matches 45.. run function tm_rpg:enemy/boss/guardian_wolf/to_idle
