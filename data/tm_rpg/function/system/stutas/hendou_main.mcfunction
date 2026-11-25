#> tm_rpg:system/stutas/hendou_main

# ステータス（HP・MP・防御・攻撃など）の実数値を組み立てる関数。player/main、enemy/main から、stat_dirty が 0 でないとき（材料が変わったとき）だけ呼ばれる
# 装備（eq_<ステータス>。装備が変わったときだけ stutas/eq_update が読み直す）・バフ・スキルポイント・基礎値を合計して実数値にする
# 材料を変える処理は、必ず stat_dirty を 1 にする（装備の読み直しも要るときは eq_dirty も 1。md/system_md/stutas.md）
# @s ＝ プレイヤーまたは敵

scoreboard players set @s stat_dirty 0

# 装備が変わっていたら読み直す（未設定＝召喚直後なども読む）
execute unless score @s eq_dirty matches 0 run function tm_rpg:system/stutas/eq_update

# 装備のステータスから始める（リセットを兼ねる）
scoreboard players operation @s hp_score = @s eq_hp
scoreboard players operation @s hp_rege_score = @s eq_hp_rege
scoreboard players operation @s mp_score = @s eq_mp
scoreboard players operation @s mp_rege_score = @s eq_mp_rege
scoreboard players operation @s armor_score = @s eq_armor
scoreboard players operation @s magic_armor_score = @s eq_magic_armor
scoreboard players operation @s p_attack_score = @s eq_p_attack
scoreboard players operation @s m_attack_score = @s eq_m_attack
scoreboard players operation @s cooltime_score = @s eq_cooltime
scoreboard players operation @s sustain_time_score = @s eq_sustain_time
scoreboard players operation @s sustain_power_score = @s eq_sustain_power
scoreboard players operation @s crit_per_score = @s eq_crit_per
scoreboard players operation @s crit_damage_score = @s eq_crit_damage
scoreboard players operation @s job_bonus_score = @s eq_job_bonus
scoreboard players operation @s evasion_score = @s eq_evasion
scoreboard players operation @s luck_score = @s eq_luck

# バフとデバフ
function tm_rpg:system/stutas/buff_debuff_main

# 基礎値を加算
scoreboard players operation @s hp_score += @s HP_MAX_LEV
scoreboard players operation @s hp_rege_score += @s HP_REGE_MAX_LEV
scoreboard players operation @s mp_score += @s MP_MAX_LEV
scoreboard players operation @s mp_rege_score += @s MP_REGE_MAX_LEV
scoreboard players operation @s armor_score += @s ARMOR_MAX_LEV
scoreboard players operation @s magic_armor_score += @s MAGIC_ARMOR_MAX_LEV
scoreboard players operation @s p_attack_score += @s P_ATTACK_MAX_LEV
scoreboard players operation @s m_attack_score += @s M_ATTACK_MAX_LEV
scoreboard players operation @s cooltime_score += @s COOLTIME_MAX_LEV
scoreboard players operation @s sustain_time_score += @s SUSTAIN_TIME_MAX_LEV
scoreboard players operation @s sustain_power_score += @s SUSTAIN_POWER_MAX_LEV
scoreboard players operation @s crit_per_score += @s CRIT_PER_MAX_LEV
scoreboard players operation @s crit_damage_score += @s CRIT_DAMAGE_MAX_LEV
scoreboard players operation @s job_bonus_score += @s JOB_BONUS_MAX_LEV
scoreboard players operation @s evasion_score += @s EVASION_MAX_LEV
scoreboard players operation @s luck_score += @s LUCK_MAX_LEV

# 特化装備の割合（%）ボーナス
function tm_rpg:system/stutas/percent_bonus

# 実数値にする（0以下だったら0~1に変更）
execute if score @s hp_score matches ..0 run scoreboard players set @s hp_score 1
scoreboard players operation @s HP_MAX = @s hp_score

execute if score @s hp_rege_score matches ..-1 run scoreboard players set @s hp_rege_score 0
scoreboard players operation @s hp_rege = @s hp_rege_score

execute if score @s mp_score matches ..0 run scoreboard players set @s mp_score 1
scoreboard players operation @s MP_MAX = @s mp_score

execute if score @s mp_rege_score matches ..-1 run scoreboard players set @s mp_rege_score 0
scoreboard players operation @s mp_rege = @s mp_rege_score

execute if score @s armor_score matches ..0 run scoreboard players set @s armor_score 1
scoreboard players operation @s armor = @s armor_score

execute if score @s magic_armor_score matches ..0 run scoreboard players set @s magic_armor_score 1
scoreboard players operation @s magic_armor = @s magic_armor_score

execute if score @s p_attack_score matches ..0 run scoreboard players set @s p_attack_score 1
scoreboard players operation @s p_attack = @s p_attack_score

execute if score @s m_attack_score matches ..0 run scoreboard players set @s m_attack_score 1
scoreboard players operation @s m_attack = @s m_attack_score

execute if score @s cooltime_score matches ..0 run scoreboard players set @s cooltime_score 0
scoreboard players operation @s cooltime = @s cooltime_score

execute if score @s sustain_time_score matches ..-1 run scoreboard players set @s sustain_time_score 0
scoreboard players operation @s sustain_time = @s sustain_time_score

execute if score @s sustain_power_score matches ..-1 run scoreboard players set @s sustain_power_score 0
scoreboard players operation @s sustain_power = @s sustain_power_score

execute if score @s crit_per_score matches ..0 run scoreboard players set @s crit_per_score 1
scoreboard players operation @s crit_per = @s crit_per_score

execute if score @s crit_damage_score matches ..0 run scoreboard players set @s crit_damage_score 1
scoreboard players operation @s crit_damage = @s crit_damage_score

execute if score @s job_bonus_score matches ..0 run scoreboard players set @s job_bonus_score 1
scoreboard players operation @s job_bonus = @s job_bonus_score

execute if score @s evasion_score matches ..0 run scoreboard players set @s evasion_score 0
scoreboard players operation @s evasion = @s evasion_score

execute if score @s luck_score matches ..0 run scoreboard players set @s luck_score 0
scoreboard players operation @s luck = @s luck_score
