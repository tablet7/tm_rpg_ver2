#> tm_rpg:enemy/enemy_set_status

execute store result score @s ent_id run random value 0..2147483646

$scoreboard players set @s hp $(HP)
$scoreboard players set @s mp $(MP)

$scoreboard players set @s HP_MAX_LEV $(HP_MAX)
$scoreboard players set @s HP_REGE_MAX_LEV $(hp_rege)
$scoreboard players set @s MP_MAX_LEV $(MP_MAX)
$scoreboard players set @s MP_REGE_MAX_LEV $(mp_rege)
$scoreboard players set @s ARMOR_MAX_LEV $(armor)
$scoreboard players set @s MAGIC_ARMOR_MAX_LEV $(magic_armor)
$scoreboard players set @s P_ATTACK_MAX_LEV $(p_attack)
$scoreboard players set @s M_ATTACK_MAX_LEV $(m_attack)
$scoreboard players set @s COOLTIME_MAX_LEV $(cooltime)
$scoreboard players set @s SUSTAIN_TIME_MAX_LEV $(sustain_time)
$scoreboard players set @s SUSTAIN_POWER_MAX_LEV $(sustain_power)
$scoreboard players set @s CRIT_PER_MAX_LEV $(crit_per)
$scoreboard players set @s CRIT_DAMAGE_MAX_LEV $(crit_damage)
$scoreboard players set @s JOB_BONUS_MAX_LEV $(job_bonus)
$scoreboard players set @s EVASION_MAX_LEV $(evasin)
$scoreboard players set @s LUCK_MAX_LEV $(luck)

scoreboard players set @s attack_timer 0
scoreboard players set @s ATTACK_TIMER_LEV 0
scoreboard players set @s burn_time 0
scoreboard players set @s bleeding_time 0
scoreboard players set @s rupture_time 0
scoreboard players set @s vibration_time 0
scoreboard players set @s sinking_time 0

effect give @s resistance infinite 100 true

# バフ
effect give @s[tag=speed0] speed infinite 0 true
effect give @s[tag=speed1] speed infinite 1 true

$loot replace entity @s weapon.mainhand loot $(loot_weapon)

tag @s remove new_mob

summon text_display ~ ~ ~ {billboard:"center",Tags:["sub_text","mount_text"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.6f,0f],scale:[1f,1f,1f]},text:{"color":"green","text":"❚❚❚❚❚❚❚❚❚❚"},background:-2368549}
ride @e[tag=sub_text,limit=1] mount @s
scoreboard players operation @e[tag=sub_text,limit=1] ent_id = @s ent_id
tag @e[type=text_display,tag=sub_text] remove sub_text