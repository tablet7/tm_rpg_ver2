#> tm_rpg:system/buff/expire

# 時間が来たバフを外す関数。player/main、enemy/main から、buff_next（一番早く切れる時刻）が今の時刻 #now temp 以下になったときだけ呼ばれる
# 切れたスキルのバフを外し、切れたポーションの値を 0 にしてから、次に切れる時刻を求め直す
# @s ＝ プレイヤーまたは敵
# このファイルは md/system_md/buff/gen_buff.py が作る（手で直さない。直すときは buff_skills.json か gen_buff.py を変えて作り直す）

# スキル
execute if score @s buff_e_test1 <= #now temp run function tm_rpg:system/buff/skill/test1/remove
execute if score @s buff_e_test2 <= #now temp run function tm_rpg:system/buff/skill/test2/remove
execute if score @s buff_e_test3 <= #now temp run function tm_rpg:system/buff/skill/test3/remove

# ポーション
execute if score @s potion_hp_buff_end <= #now temp run scoreboard players set @s potion_hp_buff 0
execute if score @s potion_hp_buff_end <= #now temp run scoreboard players reset @s potion_hp_buff_end
execute if score @s potion_mp_buff_end <= #now temp run scoreboard players set @s potion_mp_buff 0
execute if score @s potion_mp_buff_end <= #now temp run scoreboard players reset @s potion_mp_buff_end
execute if score @s potion_hp_rage_buff_end <= #now temp run scoreboard players set @s potion_hp_rage_buff 0
execute if score @s potion_hp_rage_buff_end <= #now temp run scoreboard players reset @s potion_hp_rage_buff_end
execute if score @s potion_mp_rage_buff_end <= #now temp run scoreboard players set @s potion_mp_rage_buff 0
execute if score @s potion_mp_rage_buff_end <= #now temp run scoreboard players reset @s potion_mp_rage_buff_end
execute if score @s potion_armor_buff_end <= #now temp run scoreboard players set @s potion_armor_buff 0
execute if score @s potion_armor_buff_end <= #now temp run scoreboard players reset @s potion_armor_buff_end
execute if score @s potion_magicarmor_buff_end <= #now temp run scoreboard players set @s potion_magicarmor_buff 0
execute if score @s potion_magicarmor_buff_end <= #now temp run scoreboard players reset @s potion_magicarmor_buff_end
execute if score @s potion_pattack_buff_end <= #now temp run scoreboard players set @s potion_pattack_buff 0
execute if score @s potion_pattack_buff_end <= #now temp run scoreboard players reset @s potion_pattack_buff_end
execute if score @s potion_mattack_buff_end <= #now temp run scoreboard players set @s potion_mattack_buff 0
execute if score @s potion_mattack_buff_end <= #now temp run scoreboard players reset @s potion_mattack_buff_end
execute if score @s potion_cooltime_buff_end <= #now temp run scoreboard players set @s potion_cooltime_buff 0
execute if score @s potion_cooltime_buff_end <= #now temp run scoreboard players reset @s potion_cooltime_buff_end
execute if score @s potion_sustain_buff_end <= #now temp run scoreboard players set @s potion_sustain_buff 0
execute if score @s potion_sustain_buff_end <= #now temp run scoreboard players reset @s potion_sustain_buff_end
execute if score @s potion_sustainP_buff_end <= #now temp run scoreboard players set @s potion_sustainP_buff 0
execute if score @s potion_sustainP_buff_end <= #now temp run scoreboard players reset @s potion_sustainP_buff_end
execute if score @s potion_critper_buff_end <= #now temp run scoreboard players set @s potion_critper_buff 0
execute if score @s potion_critper_buff_end <= #now temp run scoreboard players reset @s potion_critper_buff_end
execute if score @s potion_critdamage_buff_end <= #now temp run scoreboard players set @s potion_critdamage_buff 0
execute if score @s potion_critdamage_buff_end <= #now temp run scoreboard players reset @s potion_critdamage_buff_end
execute if score @s potion_job_buff_end <= #now temp run scoreboard players set @s potion_job_buff 0
execute if score @s potion_job_buff_end <= #now temp run scoreboard players reset @s potion_job_buff_end
execute if score @s potion_evasion_buff_end <= #now temp run scoreboard players set @s potion_evasion_buff 0
execute if score @s potion_evasion_buff_end <= #now temp run scoreboard players reset @s potion_evasion_buff_end
execute if score @s potion_luck_buff_end <= #now temp run scoreboard players set @s potion_luck_buff 0
execute if score @s potion_luck_buff_end <= #now temp run scoreboard players reset @s potion_luck_buff_end

function tm_rpg:system/buff/next
