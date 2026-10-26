#> tm_rpg:system/stutas/stutas_watch

# {hp:0,mp:0,armor:0,magic_armor:0,p_attack:0,m_attack:0,cooltime:0,sustaintime:0,range:0,crit_per:0,crit_damage:0,job_bonus:0,luck:0,evasion:0}

$scoreboard players set @s temp $(hp)
scoreboard players operation @s hp_score += @s temp

$scoreboard players set @s temp $(mp)
scoreboard players operation @s mp_score += @s temp

$scoreboard players set @s temp $(hp_rege)
scoreboard players operation @s hp_rege_score += @s temp

$scoreboard players set @s temp $(mp_rege)
scoreboard players operation @s mp_rege_score += @s temp

$scoreboard players set @s temp $(armor)
scoreboard players operation @s armor_score += @s temp

$scoreboard players set @s temp $(magic_armor)
scoreboard players operation @s magic_armor_score += @s temp

$scoreboard players set @s temp $(p_attack)
scoreboard players operation @s p_attack_score += @s temp

$scoreboard players set @s temp $(m_attack)
scoreboard players operation @s m_attack_score += @s temp

$scoreboard players set @s temp $(cooltime)
scoreboard players operation @s cooltime_score += @s temp

$scoreboard players set @s temp $(sustaintime)
scoreboard players operation @s sustain_time_score += @s temp

$scoreboard players set @s temp $(range)
scoreboard players operation @s sustain_power_score += @s temp

$scoreboard players set @s temp $(crit_per)
scoreboard players operation @s crit_per_score += @s temp

$scoreboard players set @s temp $(crit_damage)
scoreboard players operation @s crit_damage_score += @s temp

$scoreboard players set @s temp $(job_bonus)
scoreboard players operation @s job_bonus_score += @s temp

$scoreboard players set @s temp $(luck)
scoreboard players operation @s luck_score += @s temp

$scoreboard players set @s temp $(evasion)
scoreboard players operation @s evasion_score += @s temp