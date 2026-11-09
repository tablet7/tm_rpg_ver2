#> tm_rpg:enemy/enemy_set_status

# 召喚した敵にステータスを設定し、HPバー（text_display）を乗せる関数（マクロなし）。敵の召喚関数（enemy/summon/...）から呼ばれる
# 使い方: storage tm_rpg:enemy_status data にステータスを入れてから、execute as <召喚した敵> at @s run function tm_rpg:enemy/enemy_set_status
# data のキー: Lv, HP, HP_MAX, hp_rege, MP, MP_MAX, mp_rege, armor, magic_armor, p_attack, m_attack, cooltime, sustain_time, sustain_power, crit_per, crit_damage, job_bonus, evasin, luck
# 武器は召喚関数のほうで loot replace entity @s weapon.mainhand loot <loot table> を実行して持たせる
# @s ＝ 召喚した敵

execute store result score @s ent_id run random value 0..2147483646

execute store result score @s Lv run data get storage tm_rpg:enemy_status data.Lv

execute store result score @s hp run data get storage tm_rpg:enemy_status data.HP
execute store result score @s mp run data get storage tm_rpg:enemy_status data.MP

execute store result score @s HP_MAX_LEV run data get storage tm_rpg:enemy_status data.HP_MAX
execute store result score @s HP_REGE_MAX_LEV run data get storage tm_rpg:enemy_status data.hp_rege
execute store result score @s MP_MAX_LEV run data get storage tm_rpg:enemy_status data.MP_MAX
execute store result score @s MP_REGE_MAX_LEV run data get storage tm_rpg:enemy_status data.mp_rege
execute store result score @s ARMOR_MAX_LEV run data get storage tm_rpg:enemy_status data.armor
execute store result score @s MAGIC_ARMOR_MAX_LEV run data get storage tm_rpg:enemy_status data.magic_armor
execute store result score @s P_ATTACK_MAX_LEV run data get storage tm_rpg:enemy_status data.p_attack
execute store result score @s M_ATTACK_MAX_LEV run data get storage tm_rpg:enemy_status data.m_attack
execute store result score @s COOLTIME_MAX_LEV run data get storage tm_rpg:enemy_status data.cooltime
execute store result score @s SUSTAIN_TIME_MAX_LEV run data get storage tm_rpg:enemy_status data.sustain_time
execute store result score @s SUSTAIN_POWER_MAX_LEV run data get storage tm_rpg:enemy_status data.sustain_power
execute store result score @s CRIT_PER_MAX_LEV run data get storage tm_rpg:enemy_status data.crit_per
execute store result score @s CRIT_DAMAGE_MAX_LEV run data get storage tm_rpg:enemy_status data.crit_damage
execute store result score @s JOB_BONUS_MAX_LEV run data get storage tm_rpg:enemy_status data.job_bonus
execute store result score @s EVASION_MAX_LEV run data get storage tm_rpg:enemy_status data.evasin
execute store result score @s LUCK_MAX_LEV run data get storage tm_rpg:enemy_status data.luck

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

# 装備しているアイテムをすべてドロップしないようにする
data merge entity @s {drop_chances:{head:0f,chest:0f,legs:0f,feet:0f,mainhand:0f,offhand:0f,body:0f,saddle:0f}}

tag @s remove new_mob

summon text_display ~ ~ ~ {billboard:"center",Tags:["sub_text","mount_text"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.6f,0f],scale:[1f,1f,1f]},text:{"color":"green","text":"❚❚❚❚❚❚❚❚❚❚"},background:-2368549}
ride @e[tag=sub_text,limit=1] mount @s
scoreboard players operation @e[tag=sub_text,limit=1] ent_id = @s ent_id
tag @e[type=text_display,tag=sub_text] remove sub_text
