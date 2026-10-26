#> function tm_rpg:player/first_reload

tag @s add joined

execute store result score @s ent_id run random value 0..2147483646

scoreboard players set @s Lv 1
scoreboard players set @s HP_MAX_LEV 100
scoreboard players set @s hp 100
scoreboard players set @s HP_REGE_MAX_LEV 2
scoreboard players set @s MP_MAX_LEV 80
scoreboard players set @s mp 80
scoreboard players set @s MP_REGE_MAX_LEV 1
scoreboard players set @s ARMOR_MAX_LEV 15
scoreboard players set @s MAGIC_ARMOR_MAX_LEV 7
scoreboard players set @s P_ATTACK_MAX_LEV 8
scoreboard players set @s M_ATTACK_MAX_LEV 5
scoreboard players set @s COOLTIME_MAX_LEV 0
scoreboard players set @s SUSTAIN_TIME_MAX_LEV 0
scoreboard players set @s SUSTAIN_POWER_MAX_LEV 0
scoreboard players set @s CRIT_PER_MAX_LEV 10
scoreboard players set @s CRIT_DAMAGE_MAX_LEV 10
scoreboard players set @s JOB_BONUS_MAX_LEV 1
scoreboard players set @s EVASION_MAX_LEV 10
scoreboard players set @s LUCK_MAX_LEV 5

scoreboard players set @s ADD_POINT_ALL_LEV 5

function tm_rpg:system/stutas/skillpoint_reset
function tm_rpg:system/stutas/potion_reset

team join Player @s
tag @s add mob
gamemode adventure @s

function tm_rpg:player/reload