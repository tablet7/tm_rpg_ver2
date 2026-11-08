#> tm_rpg:system/stutas/stutas_watch

# 装備アイテム1つぶんの custom_data（storage tm_rpg:stutas item）に書かれたステータスを加算する関数（マクロなし）
# stutas/equipment_watch から、custom_data 付きの装備1つごとに呼ばれる
# キーがない（武器など）ステータスは data get が失敗して 0 になるので、加算されない
# @s ＝ プレイヤーまたは敵

execute store result score @s temp run data get storage tm_rpg:stutas item.hp
scoreboard players operation @s hp_score += @s temp

execute store result score @s temp run data get storage tm_rpg:stutas item.mp
scoreboard players operation @s mp_score += @s temp

execute store result score @s temp run data get storage tm_rpg:stutas item.hp_rege
scoreboard players operation @s hp_rege_score += @s temp

execute store result score @s temp run data get storage tm_rpg:stutas item.mp_rege
scoreboard players operation @s mp_rege_score += @s temp

execute store result score @s temp run data get storage tm_rpg:stutas item.armor
scoreboard players operation @s armor_score += @s temp

execute store result score @s temp run data get storage tm_rpg:stutas item.magic_armor
scoreboard players operation @s magic_armor_score += @s temp

execute store result score @s temp run data get storage tm_rpg:stutas item.p_attack
scoreboard players operation @s p_attack_score += @s temp

execute store result score @s temp run data get storage tm_rpg:stutas item.m_attack
scoreboard players operation @s m_attack_score += @s temp

execute store result score @s temp run data get storage tm_rpg:stutas item.cooltime
scoreboard players operation @s cooltime_score += @s temp

execute store result score @s temp run data get storage tm_rpg:stutas item.sustaintime
scoreboard players operation @s sustain_time_score += @s temp

execute store result score @s temp run data get storage tm_rpg:stutas item.range
scoreboard players operation @s sustain_power_score += @s temp

execute store result score @s temp run data get storage tm_rpg:stutas item.crit_per
scoreboard players operation @s crit_per_score += @s temp

execute store result score @s temp run data get storage tm_rpg:stutas item.crit_damage
scoreboard players operation @s crit_damage_score += @s temp

execute store result score @s temp run data get storage tm_rpg:stutas item.job_bonus
scoreboard players operation @s job_bonus_score += @s temp

execute store result score @s temp run data get storage tm_rpg:stutas item.luck
scoreboard players operation @s luck_score += @s temp

execute store result score @s temp run data get storage tm_rpg:stutas item.evasion
scoreboard players operation @s evasion_score += @s temp
