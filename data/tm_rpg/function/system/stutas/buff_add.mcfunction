#> tm_rpg:system/stutas/buff_add

# スキル・ポーションのバフの値をステータスに足す関数。stutas/buff_debuff_main から毎 tick 呼ばれる
# バフがかかっている相手（buff_next が入っている）のときだけ呼ばれる。バフが無ければ値はすべて 0 なので、足さなくてよい
# @s ＝ プレイヤーまたは敵

## スキル（かかっているスキルのバフの合計。buff/skill/<id>/add・remove が足し引きする）
scoreboard players operation @s hp_score += @s skill_hp_buff
scoreboard players operation @s mp_score += @s skill_mp_buff
scoreboard players operation @s hp_rege_score += @s skill_hp_rage_buff
scoreboard players operation @s mp_rege_score += @s skill_mp_rage_buff
scoreboard players operation @s armor_score += @s skill_armor_buff
scoreboard players operation @s magic_armor_score += @s skill_magicarmor_buff
scoreboard players operation @s p_attack_score += @s skill_pattack_buff
scoreboard players operation @s m_attack_score += @s skill_mattack_buff
scoreboard players operation @s cooltime_score += @s skill_cooltime_buff
scoreboard players operation @s sustain_time_score += @s skill_sustain_buff
scoreboard players operation @s sustain_power_score += @s skill_sustainP_buff
scoreboard players operation @s crit_per_score += @s skill_critper_buff
scoreboard players operation @s crit_damage_score += @s skill_critdamage_buff
scoreboard players operation @s job_bonus_score += @s skill_job_buff
scoreboard players operation @s evasion_score += @s skill_evasion_buff
scoreboard players operation @s luck_score += @s skill_luck_buff

## ポーション（ステータスごとに上書き。buff/potion/add）
scoreboard players operation @s hp_score += @s potion_hp_buff
scoreboard players operation @s mp_score += @s potion_mp_buff
scoreboard players operation @s hp_rege_score += @s potion_hp_rage_buff
scoreboard players operation @s mp_rege_score += @s potion_mp_rage_buff
scoreboard players operation @s armor_score += @s potion_armor_buff
scoreboard players operation @s magic_armor_score += @s potion_magicarmor_buff
scoreboard players operation @s p_attack_score += @s potion_pattack_buff
scoreboard players operation @s m_attack_score += @s potion_mattack_buff
scoreboard players operation @s cooltime_score += @s potion_cooltime_buff
scoreboard players operation @s sustain_time_score += @s potion_sustain_buff
scoreboard players operation @s sustain_power_score += @s potion_sustainP_buff
scoreboard players operation @s crit_per_score += @s potion_critper_buff
scoreboard players operation @s crit_damage_score += @s potion_critdamage_buff
scoreboard players operation @s job_bonus_score += @s potion_job_buff
scoreboard players operation @s evasion_score += @s potion_evasion_buff
scoreboard players operation @s luck_score += @s potion_luck_buff
