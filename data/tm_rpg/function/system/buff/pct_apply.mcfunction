#> tm_rpg:system/buff/pct_apply

# スキルの割合（%）のバフを、組み立て中のステータスにかける関数。stutas/hendou_main から、バフがかかっている相手（buff_next が入っている）だけ呼ばれる
# 装備・バフ・スキルポイント・基礎値・特化装備の割合を足し終えた *_score に（100 ＋ 割合の合計）/ 100 をかける
# 割合の合計が 0（または未設定）のステータスは何もしない
# @s ＝ プレイヤーまたは敵
# このファイルは md/system_md/buff/gen_buff.py が作る（手で直さない。直すときは buff_skills.json か gen_buff.py を変えて作り直す）

execute if score @s skill_hp_pct matches -2147483648.. unless score @s skill_hp_pct matches 0 run function tm_rpg:system/buff/pct/hp
execute if score @s skill_mp_pct matches -2147483648.. unless score @s skill_mp_pct matches 0 run function tm_rpg:system/buff/pct/mp
execute if score @s skill_hp_rage_pct matches -2147483648.. unless score @s skill_hp_rage_pct matches 0 run function tm_rpg:system/buff/pct/hp_rage
execute if score @s skill_mp_rage_pct matches -2147483648.. unless score @s skill_mp_rage_pct matches 0 run function tm_rpg:system/buff/pct/mp_rage
execute if score @s skill_armor_pct matches -2147483648.. unless score @s skill_armor_pct matches 0 run function tm_rpg:system/buff/pct/armor
execute if score @s skill_magicarmor_pct matches -2147483648.. unless score @s skill_magicarmor_pct matches 0 run function tm_rpg:system/buff/pct/magicarmor
execute if score @s skill_pattack_pct matches -2147483648.. unless score @s skill_pattack_pct matches 0 run function tm_rpg:system/buff/pct/pattack
execute if score @s skill_mattack_pct matches -2147483648.. unless score @s skill_mattack_pct matches 0 run function tm_rpg:system/buff/pct/mattack
execute if score @s skill_cooltime_pct matches -2147483648.. unless score @s skill_cooltime_pct matches 0 run function tm_rpg:system/buff/pct/cooltime
execute if score @s skill_sustain_pct matches -2147483648.. unless score @s skill_sustain_pct matches 0 run function tm_rpg:system/buff/pct/sustain
execute if score @s skill_sustainP_pct matches -2147483648.. unless score @s skill_sustainP_pct matches 0 run function tm_rpg:system/buff/pct/sustainp
execute if score @s skill_critper_pct matches -2147483648.. unless score @s skill_critper_pct matches 0 run function tm_rpg:system/buff/pct/critper
execute if score @s skill_critdamage_pct matches -2147483648.. unless score @s skill_critdamage_pct matches 0 run function tm_rpg:system/buff/pct/critdamage
execute if score @s skill_job_pct matches -2147483648.. unless score @s skill_job_pct matches 0 run function tm_rpg:system/buff/pct/job
execute if score @s skill_evasion_pct matches -2147483648.. unless score @s skill_evasion_pct matches 0 run function tm_rpg:system/buff/pct/evasion
execute if score @s skill_luck_pct matches -2147483648.. unless score @s skill_luck_pct matches 0 run function tm_rpg:system/buff/pct/luck
