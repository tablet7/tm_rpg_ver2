#> tm_rpg:system/buff/skill/reset

# スキルのバフをすべて外す関数。player/reload、player/first_reload から呼ばれる。ほかの場面で消したいときもこれを呼ぶ
# ポーションのバフは消さない（消すときは buff/potion/reset）
# @s ＝ プレイヤーまたは敵
# このファイルは md/system_md/buff/gen_buff.py が作る（手で直さない。直すときは buff_skills.json か gen_buff.py を変えて作り直す）

execute if score @s buff_e_test1 matches -2147483648.. run function tm_rpg:system/buff/skill/test1/remove
execute if score @s buff_e_test2 matches -2147483648.. run function tm_rpg:system/buff/skill/test2/remove
execute if score @s buff_e_test3 matches -2147483648.. run function tm_rpg:system/buff/skill/test3/remove

# 合計を 0 にそろえる（念のため）
scoreboard players set @s skill_hp_buff 0
scoreboard players set @s skill_mp_buff 0
scoreboard players set @s skill_hp_rage_buff 0
scoreboard players set @s skill_mp_rage_buff 0
scoreboard players set @s skill_armor_buff 0
scoreboard players set @s skill_magicarmor_buff 0
scoreboard players set @s skill_pattack_buff 0
scoreboard players set @s skill_mattack_buff 0
scoreboard players set @s skill_cooltime_buff 0
scoreboard players set @s skill_sustain_buff 0
scoreboard players set @s skill_sustainP_buff 0
scoreboard players set @s skill_critper_buff 0
scoreboard players set @s skill_critdamage_buff 0
scoreboard players set @s skill_job_buff 0
scoreboard players set @s skill_evasion_buff 0
scoreboard players set @s skill_luck_buff 0
scoreboard players set @s skill_hp_pct 0
scoreboard players set @s skill_mp_pct 0
scoreboard players set @s skill_hp_rage_pct 0
scoreboard players set @s skill_mp_rage_pct 0
scoreboard players set @s skill_armor_pct 0
scoreboard players set @s skill_magicarmor_pct 0
scoreboard players set @s skill_pattack_pct 0
scoreboard players set @s skill_mattack_pct 0
scoreboard players set @s skill_cooltime_pct 0
scoreboard players set @s skill_sustain_pct 0
scoreboard players set @s skill_sustainP_pct 0
scoreboard players set @s skill_critper_pct 0
scoreboard players set @s skill_critdamage_pct 0
scoreboard players set @s skill_job_pct 0
scoreboard players set @s skill_evasion_pct 0
scoreboard players set @s skill_luck_pct 0

function tm_rpg:system/buff/next
