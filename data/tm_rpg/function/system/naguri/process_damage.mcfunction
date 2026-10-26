#> tm_rpg:system/naguri/process_damage

# @s ＝ 殴られた側

#say @s なぐられた

# 殴った側への処理は execute on attacker を使う

#execute on attacker run say @s なぐった

#say a
#execute on attacker run say b

# スコアをストレージへ
data modify storage tm_rpg:damage p_damage set value 0
data modify storage tm_rpg:damage m_damage set value 0
data modify storage tm_rpg:damage c_damage set value 0

execute on attacker if items entity @s weapon.mainhand *[custom_data~{damage_type:1,damage_kinsetu:1,damage_per:100}] if score @s attack_timer >= @s ATTACK_TIMER_LEV store result storage tm_rpg:damage p_damage int 1 run scoreboard players get @s p_attack
execute on attacker if items entity @s weapon.mainhand *[custom_data~{damage_type:1,damage_kinsetu:1,damage_per:75}] if score @s attack_timer >= @s ATTACK_TIMER_LEV store result storage tm_rpg:damage p_damage int 0.75 run scoreboard players get @s p_attack
execute on attacker if items entity @s weapon.mainhand *[custom_data~{damage_type:1,damage_kinsetu:1,damage_per:200}] if score @s attack_timer >= @s ATTACK_TIMER_LEV store result storage tm_rpg:damage p_damage int 2 run scoreboard players get @s p_attack
execute on attacker if items entity @s weapon.mainhand *[custom_data~{damage_type:2,damage_kinsetu:1,damage_per:100}] if score @s attack_timer >= @s ATTACK_TIMER_LEV store result storage tm_rpg:damage m_damage int 1 run scoreboard players get @s m_attack

execute on attacker if items entity @s weapon.mainhand *[custom_data~{damage_type:1,damage_kinsetu:0,damage_per:100}] if score @s attack_timer >= @s ATTACK_TIMER_LEV if score @s shot_bow_time matches 1.. store result storage tm_rpg:damage p_damage int 1 run scoreboard players get @s p_attack
execute on attacker if items entity @s weapon.mainhand *[custom_data~{damage_type:1,damage_kinsetu:0,damage_per:125}] if score @s attack_timer >= @s ATTACK_TIMER_LEV if score @s shot_bow_time matches 1.. store result storage tm_rpg:damage p_damage int 1.25 run scoreboard players get @s p_attack
execute on attacker if items entity @s weapon.mainhand *[custom_data~{damage_type:2,damage_kinsetu:0,damage_per:100}] if score @s attack_timer >= @s ATTACK_TIMER_LEV if score @s shot_bow_time matches 1.. store result storage tm_rpg:damage m_damage int 1 run scoreboard players get @s m_attack

execute on attacker store result score @s random_rand run random value 1..100

execute on attacker if score @s crit_per >= @s random_rand store result storage tm_rpg:damage c_damage int 1 run scoreboard players get @s crit_damage

# func
data modify storage tm_rpg:damage func set value "tm_rpg:system/naguri/non_func"

# 攻撃時間リセット
execute on attacker run scoreboard players set @s attack_timer 0

# ノックバックしたときは判定しない
execute on attacker if entity @s[tag=temp_victim] run function tm_rpg:system/naguri/0damage

# ダメージを与える
function tm_rpg:system/damage_ex/damage_dealt with storage tm_rpg:damage
