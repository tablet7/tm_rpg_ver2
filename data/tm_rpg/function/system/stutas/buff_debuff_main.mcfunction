#> tm_rpg:system/stutas/buff_debuff_main

# ポーション・スキルのバフとスキルポイントによるステータスの加算を行う関数。stutas/hendou_main から呼ばれる
# バフの付け外しは system/buff/（スキル: buff/skill/<id>/add、ポーション: buff/potion/add。md/system_md/buff.md）。ここでは今の値を足すだけ
# 0 以下にならないようにする処理は hendou_main の最後で行う
# @s ＝ プレイヤーまたは敵

# バフ（スキル・ポーション）。かかっている相手だけ足す（stutas/buff_add）
# buff_next（一番早く切れる時刻）は、バフが1つでもかかっていれば入っていて、無くなると空になる（system/buff/next）
execute if score @s buff_next matches -2147483648.. run function tm_rpg:system/stutas/buff_add

## スキルポイント
scoreboard players operation @s hp_score += @s add_point_hp_buff
scoreboard players operation @s mp_score += @s add_point_mp_buff
scoreboard players operation @s hp_rege_score += @s add_point_hp_rage_buff
scoreboard players operation @s mp_rege_score += @s add_point_mp_rage_buff
scoreboard players operation @s armor_score += @s add_point_armor_buff
scoreboard players operation @s magic_armor_score += @s add_point_magicarmor_buff
scoreboard players operation @s p_attack_score += @s add_point_pattack_buff
scoreboard players operation @s m_attack_score += @s add_point_mattack_buff
scoreboard players operation @s cooltime_score += @s add_point_cooltime_buff
scoreboard players operation @s sustain_time_score += @s add_point_sustain_buff
scoreboard players operation @s sustain_power_score += @s add_point_sustainP_buff
scoreboard players operation @s crit_per_score += @s add_point_critper_buff
scoreboard players operation @s crit_damage_score += @s add_point_critdamage_buff
scoreboard players operation @s job_bonus_score += @s add_point_job_buff
scoreboard players operation @s evasion_score += @s add_point_evasion_buff
scoreboard players operation @s luck_score += @s add_point_luck_buff
