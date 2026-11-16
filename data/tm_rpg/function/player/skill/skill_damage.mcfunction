#> tm_rpg:player/skill/skill_damage

# スキルのダメージを計算し、storage tm_rpg:damage の p_damage / m_damage / c_damage に入れる関数。各スキルの関数から呼ばれる
# ダメージ = skillselect_kihon + 参照ステータス × skillselect_per / 100（値は used_carrot_on_a_stick_skill で読み込み済み）
# 使った人の付与効果増加（sustain_power）・持続時間増加（sustain_time）も storage に入れる（弾が持ち、当たったときの関数 func が #tama_sustain_power / #tama_sustain_time temp で読む）
# @s ＝ スキルを使ったプレイヤーか敵

data modify storage tm_rpg:damage p_damage set value 0
data modify storage tm_rpg:damage m_damage set value 0
data modify storage tm_rpg:damage c_damage set value 0
# 当たったときに実行する関数（変えたいスキルは、この関数を呼んだあとで上書きする）
data modify storage tm_rpg:damage func set value "tm_rpg:system/naguri/non_func"

# 参照ステータス（sanshou_type 1＝攻撃力、2＝魔法攻撃力）
scoreboard players set @s temp 0
execute if score @s skillselect_sanshou_type matches 1 run scoreboard players operation @s temp = @s p_attack
execute if score @s skillselect_sanshou_type matches 2 run scoreboard players operation @s temp = @s m_attack

# 倍率（百分率）
scoreboard players operation @s temp2 = @s skillselect_per

# ダメージ = 基本ダメージ + ステータス × 倍率 / 100
scoreboard players operation @s temp *= @s temp2
scoreboard players operation @s temp /= System CONTACT_100
scoreboard players operation @s temp3 = @s skillselect_kihon
scoreboard players operation @s temp += @s temp3

scoreboard players set @s temp4 0

# ダメージタイプ（damage_type 1＝物理、2＝魔法）
execute if score @s skillselect_damage_type matches 1 store result storage tm_rpg:damage p_damage int 1 run scoreboard players get @s temp
execute if score @s skillselect_damage_type matches 2 store result storage tm_rpg:damage m_damage int 1 run scoreboard players get @s temp
execute if score @s skillselect_damage_type matches 3 run scoreboard players operation @s temp4 = @s temp

## クリティカル
execute store result score @s random_rand run random value 1..100
execute if score @s crit_per >= @s random_rand run scoreboard players operation @s temp4 += @s crit_damage
execute store result storage tm_rpg:damage c_damage int 1 run scoreboard players get @s temp4

# 付与効果増加・持続時間増加（状態異常を付けるスキルの func が使う。main_projectile/init が弾に写す）
execute store result storage tm_rpg:damage sustain_power int 1 run scoreboard players get @s sustain_power
execute store result storage tm_rpg:damage sustain_time int 1 run scoreboard players get @s sustain_time
