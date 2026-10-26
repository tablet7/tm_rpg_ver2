#> tm_rpg:system/stutas/hendou_main

# リセット
scoreboard players set @s hp_score 0
scoreboard players set @s hp_rege_score 0
scoreboard players set @s mp_score 0
scoreboard players set @s mp_rege_score 0 
scoreboard players set @s armor_score 0 
scoreboard players set @s magic_armor_score 0
scoreboard players set @s p_attack_score 0 
scoreboard players set @s m_attack_score 0 
scoreboard players set @s cooltime_score 0
scoreboard players set @s sustain_time_score 0 
scoreboard players set @s sustain_power_score 0 
scoreboard players set @s crit_per_score 0 
scoreboard players set @s crit_damage_score 0 
scoreboard players set @s job_bonus_score 0 
scoreboard players set @s evasion_score 0 
scoreboard players set @s luck_score 0 

# アイテムを持ってたら
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{}}}}] run function tm_rpg:system/stutas/stutas_watch with entity @s SelectedItem.components."minecraft:custom_data"
execute if entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{}}}}}] run function tm_rpg:system/stutas/stutas_watch with entity @s equipment.offhand.components."minecraft:custom_data"
execute if entity @s[nbt={equipment:{head:{components:{"minecraft:custom_data":{}}}}}] run function tm_rpg:system/stutas/stutas_watch with entity @s equipment.head.components."minecraft:custom_data"
execute if entity @s[nbt={equipment:{chest:{components:{"minecraft:custom_data":{}}}}}] run function tm_rpg:system/stutas/stutas_watch with entity @s equipment.chest.components."minecraft:custom_data"
execute if entity @s[nbt={equipment:{legs:{components:{"minecraft:custom_data":{}}}}}] run function tm_rpg:system/stutas/stutas_watch with entity @s equipment.legs.components."minecraft:custom_data"
execute if entity @s[nbt={equipment:{feet:{components:{"minecraft:custom_data":{}}}}}] run function tm_rpg:system/stutas/stutas_watch with entity @s equipment.feet.components."minecraft:custom_data"

# バフとデバフ
function tm_rpg:system/stutas/buff_debuff_main

# 基礎値を加算してから実数値にする
# 0以下だったら0~1に変更
scoreboard players operation @s hp_score += @s HP_MAX_LEV
execute if score @s hp_score matches ..0 run scoreboard players set @s hp_score 1
scoreboard players operation @s HP_MAX = @s hp_score

scoreboard players operation @s hp_rege_score += @s HP_REGE_MAX_LEV
execute if score @s hp_rege_score matches ..-1 run scoreboard players set @s hp_rege_score 0
scoreboard players operation @s hp_rege = @s hp_rege_score

scoreboard players operation @s mp_score += @s MP_MAX_LEV
execute if score @s mp_score matches ..0 run scoreboard players set @s mp_score 1
scoreboard players operation @s MP_MAX = @s mp_score

scoreboard players operation @s mp_rege_score += @s MP_REGE_MAX_LEV
execute if score @s mp_rege_score matches ..-1 run scoreboard players set @s mp_rege_score 0
scoreboard players operation @s mp_rege = @s mp_rege_score

scoreboard players operation @s armor_score += @s ARMOR_MAX_LEV
execute if score @s armor_score matches ..0 run scoreboard players set @s armor_score 1
scoreboard players operation @s armor = @s armor_score

scoreboard players operation @s magic_armor_score += @s MAGIC_ARMOR_MAX_LEV
execute if score @s magic_armor_score matches ..0 run scoreboard players set @s magic_armor_score 1
scoreboard players operation @s magic_armor = @s magic_armor_score

scoreboard players operation @s p_attack_score += @s P_ATTACK_MAX_LEV
execute if score @s p_attack_score matches ..0 run scoreboard players set @s p_attack_score 1
scoreboard players operation @s p_attack = @s p_attack_score

scoreboard players operation @s m_attack_score += @s M_ATTACK_MAX_LEV
execute if score @s m_attack_score matches ..0 run scoreboard players set @s m_attack_score 1
scoreboard players operation @s m_attack = @s m_attack_score

scoreboard players operation @s cooltime_score += @s COOLTIME_MAX_LEV
execute if score @s cooltime_score matches ..0 run scoreboard players set @s cooltime_score 0
scoreboard players operation @s cooltime = @s cooltime_score

scoreboard players operation @s sustain_time_score += @s SUSTAIN_TIME_MAX_LEV
execute if score @s sustain_time_score matches ..-1 run scoreboard players set @s sustain_time_score 0
scoreboard players operation @s sustain_time = @s sustain_time_score

scoreboard players operation @s sustain_power_score += @s SUSTAIN_POWER_MAX_LEV
execute if score @s sustain_power_score matches ..-1 run scoreboard players set @s sustain_power_score 0
scoreboard players operation @s sustain_power = @s sustain_power_score

scoreboard players operation @s crit_per_score += @s CRIT_PER_MAX_LEV
execute if score @s crit_per_score matches ..0 run scoreboard players set @s crit_per_score 1
scoreboard players operation @s crit_per = @s crit_per_score

scoreboard players operation @s crit_damage_score += @s CRIT_DAMAGE_MAX_LEV
execute if score @s crit_damage_score matches ..0 run scoreboard players set @s crit_damage_score 1
scoreboard players operation @s crit_damage = @s crit_damage_score

scoreboard players operation @s job_bonus_score += @s JOB_BONUS_MAX_LEV
execute if score @s job_bonus_score matches ..0 run scoreboard players set @s job_bonus_score 1
scoreboard players operation @s job_bonus = @s job_bonus_score

scoreboard players operation @s evasion_score += @s EVASION_MAX_LEV
execute if score @s evasion_score matches ..0 run scoreboard players set @s evasion_score 0
scoreboard players operation @s evasion = @s evasion_score

scoreboard players operation @s luck_score += @s LUCK_MAX_LEV
execute if score @s luck_score matches ..0 run scoreboard players set @s luck_score 0
scoreboard players operation @s luck = @s luck_score