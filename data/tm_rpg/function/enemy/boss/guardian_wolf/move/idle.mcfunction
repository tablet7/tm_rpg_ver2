#> tm_rpg:enemy/boss/guardian_wolf/move/idle

# 待機。guardian_wolf/tick から行動番号 1 のときに呼ばれる
# @s ＝ マスター

# 近くに誰もいなければ、いちばん近いプレイヤーの方を向いて歩く（7 マスより近ければ止まる）
execute unless entity @a[gamemode=!spectator,distance=..7] if entity @a[gamemode=!spectator,distance=..48] run function tm_rpg:enemy/boss/guardian_wolf/walk_step
execute if score #walk boss_tmp matches 0 if score @s boss_walk matches 1 run scoreboard players set #walkstop boss_tmp 1
scoreboard players operation @s boss_walk = #walk boss_tmp
scoreboard players operation #wt boss_tmp = @s boss_t
scoreboard players set #c boss_tmp 20
scoreboard players operation #wt boss_tmp %= #c boss_tmp
execute if score #walk boss_tmp matches 0 if score @s boss_t matches 1 run rotate @s facing entity @p[gamemode=!spectator,distance=..48]
execute if score @s boss_t matches 1 at @s run rotate @s ~ 0
function tm_rpg:enemy/boss/guardian_wolf/ground
# 形態の切り替えで決まった行動があれば、すぐ出す
execute if score @s boss_force matches 1.. run return run function tm_rpg:enemy/boss/guardian_wolf/choose
execute if score @s boss_t matches 40.. run function tm_rpg:enemy/boss/guardian_wolf/choose
