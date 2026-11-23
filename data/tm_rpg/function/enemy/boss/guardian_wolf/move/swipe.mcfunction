#> tm_rpg:enemy/boss/guardian_wolf/move/swipe

# 行動 2: swipe（50tick）のマスター側。guardian_wolf/tick から呼ばれる
# @s ＝ マスター

# 開始tick: 向きを決める
execute if score @s boss_t matches 1 run rotate @s facing entity @p[gamemode=!spectator,distance=..48]
execute if score @s boss_t matches 1 at @s run rotate @s ~ 0
# 地面に沿わせる
function tm_rpg:enemy/boss/guardian_wolf/ground
# tm_rpg のスキルを使う（本体の当たり判定として）
execute if score @s boss_t matches 1 at @s facing entity @p[gamemode=!spectator,distance=..48] feet as @e[type=#tm_rpg:guardian_wolf_part,tag=guardian_wolf.core,distance=..48,limit=1] run function tm_rpg:enemy/skill/warn_wolf_swipe
# tm_rpg のスキルを使う（本体の当たり判定として）。形態 2 から
execute if score @s boss_t matches 1 if score @s boss_phase matches 2.. at @s facing entity @p[gamemode=!spectator,distance=..48] feet as @e[type=#tm_rpg:guardian_wolf_part,tag=guardian_wolf.core,distance=..48,limit=1] run function tm_rpg:enemy/skill/warn_wolf_wave
execute if score @s boss_t matches 50.. run function tm_rpg:enemy/boss/guardian_wolf/to_idle
