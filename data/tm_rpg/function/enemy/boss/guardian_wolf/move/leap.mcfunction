#> tm_rpg:enemy/boss/guardian_wolf/move/leap

# 行動 5: leap（55tick）のマスター側。guardian_wolf/tick から呼ばれる
# @s ＝ マスター

# 開始tick: 向きを決める
execute if score @s boss_t matches 1 run rotate @s facing entity @p[gamemode=!spectator,distance=..48]
execute if score @s boss_t matches 1 at @s run rotate @s ~ 0
# 飛び掛かり: 15tick目に、いちばん近いプレイヤーの足元を目標にする（座標は 100 倍のスコア）
execute if score @s boss_t matches 15 run rotate @s facing entity @p[gamemode=!spectator,distance=..48]
execute if score @s boss_t matches 15 at @s run rotate @s ~ 0
execute if score @s boss_t matches 15 store result score @s boss_lx run data get entity @s Pos[0] 100
execute if score @s boss_t matches 15 store result score @s boss_ldx run data get entity @p[gamemode=!spectator,distance=..48] Pos[0] 100
execute if score @s boss_t matches 15 run scoreboard players operation @s boss_ldx -= @s boss_lx
execute if score @s boss_t matches 15 store result score @s boss_ly run data get entity @s Pos[1] 100
execute if score @s boss_t matches 15 store result score @s boss_ldy run data get entity @p[gamemode=!spectator,distance=..48] Pos[1] 100
execute if score @s boss_t matches 15 run scoreboard players operation @s boss_ldy -= @s boss_ly
execute if score @s boss_t matches 15 store result score @s boss_lz run data get entity @s Pos[2] 100
execute if score @s boss_t matches 15 store result score @s boss_ldz run data get entity @p[gamemode=!spectator,distance=..48] Pos[2] 100
execute if score @s boss_t matches 15 run scoreboard players operation @s boss_ldz -= @s boss_lz
# 16〜35tick: 放物線で目標へ（高さ 8 マス）
execute if score @s boss_t matches 16..35 run function tm_rpg:enemy/boss/guardian_wolf/move/leap_leap
# 地面に沿わせる（飛んでいるあいだは除く）
execute unless score @s boss_t matches 16..35 run function tm_rpg:enemy/boss/guardian_wolf/ground
# tm_rpg のスキルを使う（本体の当たり判定として）。場所 ＝ いちばん近いプレイヤーの足元（向き ＝ ボスからプレイヤーへ）
execute if score @s boss_t matches 15 at @s facing entity @p[gamemode=!spectator,distance=..48] feet positioned as @p[gamemode=!spectator,distance=..48] as @e[type=#tm_rpg:guardian_wolf_part,tag=guardian_wolf.core,distance=..48,limit=1] run function tm_rpg:enemy/skill/warn_wolf_leap
# tm_rpg のスキルを使う（本体の当たり判定として）。形態 2 から。場所 ＝ いちばん近いプレイヤーの足元（向き ＝ ボスからプレイヤーへ）
execute if score @s boss_t matches 15 if score @s boss_phase matches 2.. at @s facing entity @p[gamemode=!spectator,distance=..48] feet positioned as @p[gamemode=!spectator,distance=..48] as @e[type=#tm_rpg:guardian_wolf_part,tag=guardian_wolf.core,distance=..48,limit=1] run function tm_rpg:enemy/skill/warn_wolf_ring
execute if score @s boss_t matches 55.. run function tm_rpg:enemy/boss/guardian_wolf/to_idle
