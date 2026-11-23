#> tm_rpg:enemy/boss/guardian_wolf/move/roar

# 行動 6: roar（50tick）のマスター側。guardian_wolf/tick から呼ばれる
# @s ＝ マスター

# 開始tick: 向きを決める
execute if score @s boss_t matches 1 run rotate @s facing entity @p[gamemode=!spectator,distance=..48]
execute if score @s boss_t matches 1 at @s run rotate @s ~ 0
# 地面に沿わせる
function tm_rpg:enemy/boss/guardian_wolf/ground
# tm_rpg のスキルを使う（本体の当たり判定として）
execute if score @s boss_t matches 12 at @s as @e[type=#tm_rpg:guardian_wolf_part,tag=guardian_wolf.core,distance=..48,limit=1] run function tm_rpg:enemy/skill/wolf_roar
# tm_rpg のスキルを使う（本体の当たり判定として）。形態 2 から
execute if score @s boss_t matches 12 if score @s boss_phase matches 2.. at @s as @e[type=#tm_rpg:guardian_wolf_part,tag=guardian_wolf.core,distance=..48,limit=1] run function tm_rpg:enemy/skill/wolf_thunder_all
# 形態 2 のモデルに差し替える（形態 2 に入ってから最初の1回）
execute if score @s boss_t matches 12 if score @s boss_phase matches 2.. unless score @s boss_form matches 2.. run function tm_rpg:enemy/boss/guardian_wolf/phase/swap_2
execute if score @s boss_t matches 50.. run function tm_rpg:enemy/boss/guardian_wolf/to_idle
