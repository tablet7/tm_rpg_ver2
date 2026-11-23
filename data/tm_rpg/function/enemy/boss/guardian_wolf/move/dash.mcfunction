#> tm_rpg:enemy/boss/guardian_wolf/move/dash

# 行動 3: dash（85tick）のマスター側。guardian_wolf/tick から呼ばれる
# @s ＝ マスター

# 開始tick: 向きを決める
execute if score @s boss_t matches 1 run rotate @s facing entity @p[gamemode=!spectator,distance=..48]
execute if score @s boss_t matches 1 at @s run rotate @s ~ 0
# 前進（1ブロック先・体の中ほど・鼻先が空いているときだけ）
execute if score @s boss_t matches 31..45 run function tm_rpg:enemy/boss/guardian_wolf/step_up
execute if score @s boss_t matches 31..45 at @s if block ^ ^1 ^1 #minecraft:replaceable if block ^ ^1 ^2.75 #minecraft:replaceable if block ^ ^1 ^5.5 #minecraft:replaceable run teleport @s ^ ^ ^1
# 地面に沿わせる
function tm_rpg:enemy/boss/guardian_wolf/ground
# tm_rpg のスキルを使う（本体の当たり判定として）
execute if score @s boss_t matches 1 at @s facing entity @p[gamemode=!spectator,distance=..48] feet as @e[type=#tm_rpg:guardian_wolf_part,tag=guardian_wolf.core,distance=..48,limit=1] run function tm_rpg:enemy/skill/warn_wolf_dash
# tm_rpg のスキルを使う（本体の当たり判定として）
execute if score @s boss_t matches 46 at @s positioned ^ ^ ^5 as @e[type=#tm_rpg:guardian_wolf_part,tag=guardian_wolf.core,distance=..48,limit=1] run function tm_rpg:enemy/skill/warn_wolf_slam
# tm_rpg のスキルを使う（本体の当たり判定として）。形態 2 から
execute if score @s boss_t matches 46 if score @s boss_phase matches 2.. at @s positioned ^ ^ ^5 as @e[type=#tm_rpg:guardian_wolf_part,tag=guardian_wolf.core,distance=..48,limit=1] run function tm_rpg:enemy/skill/warn_wolf_ring
execute if score @s boss_t matches 85.. run function tm_rpg:enemy/boss/guardian_wolf/to_idle
