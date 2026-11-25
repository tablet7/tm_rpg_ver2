#> tm_rpg:system/buff/next

# 一番早く切れる時刻（buff_next）を求め直す関数。buff/expire、skill/reset、potion/reset から呼ばれる
# かかっているバフが無ければ buff_next を空にする（player/main・enemy/main の比べる処理と、stutas/buff_debuff_main の足し算を飛ばせる）
# @s ＝ プレイヤーまたは敵
# このファイルは md/system_md/buff/gen_buff.py が作る（手で直さない。直すときは buff_skills.json か gen_buff.py を変えて作り直す）

scoreboard players set @s buff_next 2147483647
execute if score @s buff_e_test1 matches -2147483648.. run scoreboard players operation @s buff_next < @s buff_e_test1
execute if score @s buff_e_test2 matches -2147483648.. run scoreboard players operation @s buff_next < @s buff_e_test2
execute if score @s potion_hp_buff_end matches -2147483648.. run scoreboard players operation @s buff_next < @s potion_hp_buff_end
execute if score @s potion_mp_buff_end matches -2147483648.. run scoreboard players operation @s buff_next < @s potion_mp_buff_end
execute if score @s potion_hp_rage_buff_end matches -2147483648.. run scoreboard players operation @s buff_next < @s potion_hp_rage_buff_end
execute if score @s potion_mp_rage_buff_end matches -2147483648.. run scoreboard players operation @s buff_next < @s potion_mp_rage_buff_end
execute if score @s potion_armor_buff_end matches -2147483648.. run scoreboard players operation @s buff_next < @s potion_armor_buff_end
execute if score @s potion_magicarmor_buff_end matches -2147483648.. run scoreboard players operation @s buff_next < @s potion_magicarmor_buff_end
execute if score @s potion_pattack_buff_end matches -2147483648.. run scoreboard players operation @s buff_next < @s potion_pattack_buff_end
execute if score @s potion_mattack_buff_end matches -2147483648.. run scoreboard players operation @s buff_next < @s potion_mattack_buff_end
execute if score @s potion_cooltime_buff_end matches -2147483648.. run scoreboard players operation @s buff_next < @s potion_cooltime_buff_end
execute if score @s potion_sustain_buff_end matches -2147483648.. run scoreboard players operation @s buff_next < @s potion_sustain_buff_end
execute if score @s potion_sustainP_buff_end matches -2147483648.. run scoreboard players operation @s buff_next < @s potion_sustainP_buff_end
execute if score @s potion_critper_buff_end matches -2147483648.. run scoreboard players operation @s buff_next < @s potion_critper_buff_end
execute if score @s potion_critdamage_buff_end matches -2147483648.. run scoreboard players operation @s buff_next < @s potion_critdamage_buff_end
execute if score @s potion_job_buff_end matches -2147483648.. run scoreboard players operation @s buff_next < @s potion_job_buff_end
execute if score @s potion_evasion_buff_end matches -2147483648.. run scoreboard players operation @s buff_next < @s potion_evasion_buff_end
execute if score @s potion_luck_buff_end matches -2147483648.. run scoreboard players operation @s buff_next < @s potion_luck_buff_end

execute if score @s buff_next matches 2147483647 run scoreboard players reset @s buff_next
