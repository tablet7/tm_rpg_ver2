#> test_weapon_motion:weapon_hit/damage

# 武器の右クリックの攻撃・戦技のダメージを求め、storage tm_rpg:damage の p_damage / m_damage / c_damage / func / sustain_power / sustain_time に入れる
# weapon_hit/front3 と、戦技の入口（sengi/<id>/skill1。tm_rpg のスキルの player/skill/skill_damage の代わり）から呼ばれる
# 基本ダメージ ＝ kihon + 参照ステータス × per / 100（メインハンドの武器の custom_data。tm_rpg:system/naguri/weapon_damage と同じ式）
# ダメージ ＝ 基本ダメージ × #rate / 100（武器倍率。weapon_rate/<種類>）。0 になったときは 1
# クリティカルは tm_rpg のスキル（player/skill/skill_damage）と同じ: crit_per の確率で crit_damage を確定ダメージに足す
# 入力: #rate twm_tmp ＝ 倍率（百分率）
# @s ＝ プレイヤー

data modify storage tm_rpg:damage p_damage set value 0
data modify storage tm_rpg:damage m_damage set value 0
data modify storage tm_rpg:damage c_damage set value 0
data modify storage tm_rpg:damage func set value "tm_rpg:system/naguri/non_func"

# 武器の custom_data（kihon・per・sanshou_type・damage_type）
data remove storage test_weapon_motion:hit item
data modify storage test_weapon_motion:hit item set from entity @s SelectedItem.components."minecraft:custom_data"

# 参照ステータス（sanshou_type 1 ＝ 攻撃力、2 ＝ 魔法攻撃力）
scoreboard players set #dmg twm_tmp 0
execute if data storage test_weapon_motion:hit item{sanshou_type:1} run scoreboard players operation #dmg twm_tmp = @s p_attack
execute if data storage test_weapon_motion:hit item{sanshou_type:2} run scoreboard players operation #dmg twm_tmp = @s m_attack

# 基本ダメージ ＝ kihon + ステータス × per / 100
execute store result score #dmg_k twm_tmp run data get storage test_weapon_motion:hit item.per
scoreboard players operation #dmg twm_tmp *= #dmg_k twm_tmp
scoreboard players operation #dmg twm_tmp /= System CONTACT_100
execute store result score #dmg_k twm_tmp run data get storage test_weapon_motion:hit item.kihon
scoreboard players operation #dmg twm_tmp += #dmg_k twm_tmp

# 武器倍率
scoreboard players operation #dmg twm_tmp *= #rate twm_tmp
scoreboard players operation #dmg twm_tmp /= System CONTACT_100
execute if score #dmg twm_tmp matches ..0 run scoreboard players set #dmg twm_tmp 1

# ダメージタイプ（damage_type 1 ＝ 物理、2 ＝ 魔法、3 ＝ 確定）
scoreboard players set #dmg_c twm_tmp 0
execute if data storage test_weapon_motion:hit item{damage_type:1} store result storage tm_rpg:damage p_damage int 1 run scoreboard players get #dmg twm_tmp
execute if data storage test_weapon_motion:hit item{damage_type:2} store result storage tm_rpg:damage m_damage int 1 run scoreboard players get #dmg twm_tmp
execute if data storage test_weapon_motion:hit item{damage_type:3} run scoreboard players operation #dmg_c twm_tmp = #dmg twm_tmp

# クリティカル
execute store result score @s random_rand run random value 1..100
execute if score @s crit_per >= @s random_rand run scoreboard players operation #dmg_c twm_tmp += @s crit_damage
execute store result storage tm_rpg:damage c_damage int 1 run scoreboard players get #dmg_c twm_tmp

# 付与効果増加・持続時間増加（player/skill/skill_damage と同じ。戦技の弾が状態異常を与えるとき main_projectile/init が読む）
execute store result storage tm_rpg:damage sustain_power int 1 run scoreboard players get @s sustain_power
execute store result storage tm_rpg:damage sustain_time int 1 run scoreboard players get @s sustain_time
