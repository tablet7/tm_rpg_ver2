#> tm_rpg:system/buff/potion/reset

# ポーションのバフをすべて外す関数。player/reload、player/first_reload から呼ばれる。ほかの場面で消したいときもこれを呼ぶ
# スキルのバフは消さない（消すときは buff/skill/reset）
# @s ＝ プレイヤーまたは敵
# このファイルは md/system_md/buff/gen_buff.py が作る（手で直さない。直すときは buff_skills.json か gen_buff.py を変えて作り直す）

scoreboard players set @s potion_hp_buff 0
scoreboard players reset @s potion_hp_buff_end
scoreboard players set @s potion_mp_buff 0
scoreboard players reset @s potion_mp_buff_end
scoreboard players set @s potion_hp_rage_buff 0
scoreboard players reset @s potion_hp_rage_buff_end
scoreboard players set @s potion_mp_rage_buff 0
scoreboard players reset @s potion_mp_rage_buff_end
scoreboard players set @s potion_armor_buff 0
scoreboard players reset @s potion_armor_buff_end
scoreboard players set @s potion_magicarmor_buff 0
scoreboard players reset @s potion_magicarmor_buff_end
scoreboard players set @s potion_pattack_buff 0
scoreboard players reset @s potion_pattack_buff_end
scoreboard players set @s potion_mattack_buff 0
scoreboard players reset @s potion_mattack_buff_end
scoreboard players set @s potion_cooltime_buff 0
scoreboard players reset @s potion_cooltime_buff_end
scoreboard players set @s potion_sustain_buff 0
scoreboard players reset @s potion_sustain_buff_end
scoreboard players set @s potion_sustainP_buff 0
scoreboard players reset @s potion_sustainP_buff_end
scoreboard players set @s potion_critper_buff 0
scoreboard players reset @s potion_critper_buff_end
scoreboard players set @s potion_critdamage_buff 0
scoreboard players reset @s potion_critdamage_buff_end
scoreboard players set @s potion_job_buff 0
scoreboard players reset @s potion_job_buff_end
scoreboard players set @s potion_evasion_buff 0
scoreboard players reset @s potion_evasion_buff_end
scoreboard players set @s potion_luck_buff 0
scoreboard players reset @s potion_luck_buff_end

function tm_rpg:system/buff/next
