#> tm_rpg:system/buff/potion/add

# ポーションのバフを付ける関数。ポーションを飲んだときの関数から呼ぶ
# ステータスごとに上書きする（かかっていても、値も時間も新しいものに置き換わる）。いくつかのステータスを上げるときは、ステータスごとに呼ぶ
# 入力: #buff_stat temp ＝ ステータスの番号（下の表）、#buff_power temp ＝ 値（マイナスならデバフ）、#buff_time temp ＝ 時間（秒）
#   1=最大HP（hp）
#   2=最大MP（mp）
#   3=HP回復（hp_rage）
#   4=MP回復（mp_rage）
#   5=物理防御（armor）
#   6=魔法防御（magicarmor）
#   7=物理攻撃（pattack）
#   8=魔法攻撃（mattack）
#   9=クールタイム短縮（cooltime）
#   10=持続時間増加（sustain）
#   11=付与効果増加（sustainP）
#   12=会心率（critper）
#   13=会心ダメージ（critdamage）
#   14=職業ボーナス（job）
#   15=回避（evasion）
#   16=幸運（luck）
# 出力: 付けられたら 1、入力がおかしいときは付けない（return fail）
# @s ＝ バフを付ける相手（プレイヤーか敵）
# このファイルは md/system_md/buff/gen_buff.py が作る（手で直さない。直すときは buff_skills.json か gen_buff.py を変えて作り直す）

execute unless score #buff_time temp matches 1.. run return fail
execute unless score #buff_stat temp matches 1..16 run return fail

# 切れる時刻（今の gametime ＋ 秒 × 20）
scoreboard players operation #buff_end temp = #buff_time temp
scoreboard players operation #buff_end temp *= System CONTACT_20
scoreboard players operation #buff_end temp += #now temp

# 一番早く切れる時刻を更新する
execute unless score @s buff_next matches -2147483648.. run scoreboard players operation @s buff_next = #buff_end temp
scoreboard players operation @s buff_next < #buff_end temp

# 値と時刻を上書きする
execute if score #buff_stat temp matches 1 run scoreboard players operation @s potion_hp_buff = #buff_power temp
execute if score #buff_stat temp matches 1 run return run scoreboard players operation @s potion_hp_buff_end = #buff_end temp
execute if score #buff_stat temp matches 2 run scoreboard players operation @s potion_mp_buff = #buff_power temp
execute if score #buff_stat temp matches 2 run return run scoreboard players operation @s potion_mp_buff_end = #buff_end temp
execute if score #buff_stat temp matches 3 run scoreboard players operation @s potion_hp_rage_buff = #buff_power temp
execute if score #buff_stat temp matches 3 run return run scoreboard players operation @s potion_hp_rage_buff_end = #buff_end temp
execute if score #buff_stat temp matches 4 run scoreboard players operation @s potion_mp_rage_buff = #buff_power temp
execute if score #buff_stat temp matches 4 run return run scoreboard players operation @s potion_mp_rage_buff_end = #buff_end temp
execute if score #buff_stat temp matches 5 run scoreboard players operation @s potion_armor_buff = #buff_power temp
execute if score #buff_stat temp matches 5 run return run scoreboard players operation @s potion_armor_buff_end = #buff_end temp
execute if score #buff_stat temp matches 6 run scoreboard players operation @s potion_magicarmor_buff = #buff_power temp
execute if score #buff_stat temp matches 6 run return run scoreboard players operation @s potion_magicarmor_buff_end = #buff_end temp
execute if score #buff_stat temp matches 7 run scoreboard players operation @s potion_pattack_buff = #buff_power temp
execute if score #buff_stat temp matches 7 run return run scoreboard players operation @s potion_pattack_buff_end = #buff_end temp
execute if score #buff_stat temp matches 8 run scoreboard players operation @s potion_mattack_buff = #buff_power temp
execute if score #buff_stat temp matches 8 run return run scoreboard players operation @s potion_mattack_buff_end = #buff_end temp
execute if score #buff_stat temp matches 9 run scoreboard players operation @s potion_cooltime_buff = #buff_power temp
execute if score #buff_stat temp matches 9 run return run scoreboard players operation @s potion_cooltime_buff_end = #buff_end temp
execute if score #buff_stat temp matches 10 run scoreboard players operation @s potion_sustain_buff = #buff_power temp
execute if score #buff_stat temp matches 10 run return run scoreboard players operation @s potion_sustain_buff_end = #buff_end temp
execute if score #buff_stat temp matches 11 run scoreboard players operation @s potion_sustainP_buff = #buff_power temp
execute if score #buff_stat temp matches 11 run return run scoreboard players operation @s potion_sustainP_buff_end = #buff_end temp
execute if score #buff_stat temp matches 12 run scoreboard players operation @s potion_critper_buff = #buff_power temp
execute if score #buff_stat temp matches 12 run return run scoreboard players operation @s potion_critper_buff_end = #buff_end temp
execute if score #buff_stat temp matches 13 run scoreboard players operation @s potion_critdamage_buff = #buff_power temp
execute if score #buff_stat temp matches 13 run return run scoreboard players operation @s potion_critdamage_buff_end = #buff_end temp
execute if score #buff_stat temp matches 14 run scoreboard players operation @s potion_job_buff = #buff_power temp
execute if score #buff_stat temp matches 14 run return run scoreboard players operation @s potion_job_buff_end = #buff_end temp
execute if score #buff_stat temp matches 15 run scoreboard players operation @s potion_evasion_buff = #buff_power temp
execute if score #buff_stat temp matches 15 run return run scoreboard players operation @s potion_evasion_buff_end = #buff_end temp
execute if score #buff_stat temp matches 16 run scoreboard players operation @s potion_luck_buff = #buff_power temp
execute if score #buff_stat temp matches 16 run return run scoreboard players operation @s potion_luck_buff_end = #buff_end temp
