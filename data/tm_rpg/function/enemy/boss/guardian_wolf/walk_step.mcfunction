#> tm_rpg:enemy/boss/guardian_wolf/walk_step

# 待機中に1歩進む。guardian_wolf/move/idle から呼ばれる
# @s ＝ マスター

rotate @s facing entity @p[gamemode=!spectator,distance=..48]
execute at @s run rotate @s ~ 0
function tm_rpg:enemy/boss/guardian_wolf/step_up
execute at @s if block ^ ^1 ^1 #minecraft:replaceable if block ^ ^1 ^2.75 #minecraft:replaceable if block ^ ^1 ^5.5 #minecraft:replaceable run teleport @s ^ ^ ^0.15
scoreboard players set #walk boss_tmp 1
