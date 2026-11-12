#> tm_rpg:system/naguri/weapon_damage

# 武器の custom_data（storage tm_rpg:weapon data）からダメージを計算し、storage tm_rpg:damage の p_damage / m_damage に入れる関数
# naguri/process_damage から、攻撃間隔を満たしているときに呼ばれる
# ダメージ = kihon + 参照ステータス × per / 100（per は整数の百分率。120 = 120%）
# @s ＝ 殴った側

# 遠距離武器（kinsetu:0）は弓を撃った直後だけ有効
execute if data storage tm_rpg:weapon data{kinsetu:0} unless score @s shot_bow_time matches 1.. run return 0

# 参照ステータス（sanshou_type 1＝攻撃力、2＝魔法攻撃力）
scoreboard players set @s temp 0
execute if data storage tm_rpg:weapon data{sanshou_type:1} run scoreboard players operation @s temp = @s p_attack
execute if data storage tm_rpg:weapon data{sanshou_type:2} run scoreboard players operation @s temp = @s m_attack

# 倍率（百分率）
execute store result score @s temp2 run data get storage tm_rpg:weapon data.per

# ダメージ = 基本ダメージ + ステータス × 倍率 / 100
scoreboard players operation @s temp *= @s temp2
scoreboard players operation @s temp /= System CONTACT_100
execute store result score @s temp3 run data get storage tm_rpg:weapon data.kihon
scoreboard players operation @s temp += @s temp3

# ダメージタイプ（damage_type 1＝物理、2＝魔法）
execute if data storage tm_rpg:weapon data{damage_type:1} store result storage tm_rpg:damage p_damage int 1 run scoreboard players get @s temp
execute if data storage tm_rpg:weapon data{damage_type:2} store result storage tm_rpg:damage m_damage int 1 run scoreboard players get @s temp
execute if data storage tm_rpg:weapon data{damage_type:3} run scoreboard players operation @s temp4 = @s temp