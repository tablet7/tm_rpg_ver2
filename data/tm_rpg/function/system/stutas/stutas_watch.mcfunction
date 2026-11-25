#> tm_rpg:system/stutas/stutas_watch

# 装備アイテム1つぶんの custom_data（storage tm_rpg:stutas item）に書かれたステータスを、装備の合計 eq_<ステータス> に加算する関数（マクロなし）
# stutas/equipment_watch から、custom_data 付きの装備1つごとに呼ばれる
# キーがない（武器など）ステータスは data get が失敗して 0 になるので、加算されない
# @s ＝ プレイヤーまたは敵

execute store result score @s temp run data get storage tm_rpg:stutas item.hp
scoreboard players operation @s eq_hp += @s temp

execute store result score @s temp run data get storage tm_rpg:stutas item.mp
scoreboard players operation @s eq_mp += @s temp

execute store result score @s temp run data get storage tm_rpg:stutas item.hp_rege
scoreboard players operation @s eq_hp_rege += @s temp

execute store result score @s temp run data get storage tm_rpg:stutas item.mp_rege
scoreboard players operation @s eq_mp_rege += @s temp

execute store result score @s temp run data get storage tm_rpg:stutas item.armor
scoreboard players operation @s eq_armor += @s temp

execute store result score @s temp run data get storage tm_rpg:stutas item.magic_armor
scoreboard players operation @s eq_magic_armor += @s temp

execute store result score @s temp run data get storage tm_rpg:stutas item.p_attack
scoreboard players operation @s eq_p_attack += @s temp

execute store result score @s temp run data get storage tm_rpg:stutas item.m_attack
scoreboard players operation @s eq_m_attack += @s temp

execute store result score @s temp run data get storage tm_rpg:stutas item.cooltime
scoreboard players operation @s eq_cooltime += @s temp

execute store result score @s temp run data get storage tm_rpg:stutas item.sustaintime
scoreboard players operation @s eq_sustain_time += @s temp

execute store result score @s temp run data get storage tm_rpg:stutas item.range
scoreboard players operation @s eq_sustain_power += @s temp

execute store result score @s temp run data get storage tm_rpg:stutas item.crit_per
scoreboard players operation @s eq_crit_per += @s temp

execute store result score @s temp run data get storage tm_rpg:stutas item.crit_damage
scoreboard players operation @s eq_crit_damage += @s temp

execute store result score @s temp run data get storage tm_rpg:stutas item.job_bonus
scoreboard players operation @s eq_job_bonus += @s temp

execute store result score @s temp run data get storage tm_rpg:stutas item.luck
scoreboard players operation @s eq_luck += @s temp

execute store result score @s temp run data get storage tm_rpg:stutas item.evasion
scoreboard players operation @s eq_evasion += @s temp
