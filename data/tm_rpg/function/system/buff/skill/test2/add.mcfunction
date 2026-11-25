#> tm_rpg:system/buff/skill/test2/add

# スキルのバフ「テスト用2（物理攻撃・物理防御・最大HP）」を付ける関数。スキルの関数から呼ぶ
# かかっているときにもう一度付けると、時間も値も上書きする（前に足した値を引いてから足し直す）
# ほかのスキルのバフとは重なる（足し算になる）
# 入力: #buff_time temp ＝ 時間（秒）、#buff_pattack temp ＝ 物理攻撃、#buff_armor temp ＝ 物理防御、#buff_hp temp ＝ 最大HP（マイナスならデバフ）
#   入力は毎回すべて入れる（前のスキルの値が temp に残っているため）
# 出力: 付けられたら 1、時間が 1 秒未満なら付けない（return fail）
# @s ＝ バフを付ける相手（プレイヤーか敵）
# このファイルは md/system_md/buff/gen_buff.py が作る（手で直さない。直すときは buff_skills.json か gen_buff.py を変えて作り直す）

execute unless score #buff_time temp matches 1.. run return fail

# かかっていたら、前に足した値を引く
execute if score @s buff_e_test2 matches -2147483648.. run function tm_rpg:system/buff/skill/test2/remove

# 値を覚えて、合計に足す
scoreboard players operation @s buff_v_test2_pattack = #buff_pattack temp
scoreboard players operation @s skill_pattack_buff += @s buff_v_test2_pattack
scoreboard players operation @s buff_v_test2_armor = #buff_armor temp
scoreboard players operation @s skill_armor_buff += @s buff_v_test2_armor
scoreboard players operation @s buff_v_test2_hp = #buff_hp temp
scoreboard players operation @s skill_hp_buff += @s buff_v_test2_hp

# 切れる時刻（今の gametime ＋ 秒 × 20）
scoreboard players operation @s buff_e_test2 = #buff_time temp
scoreboard players operation @s buff_e_test2 *= System CONTACT_20
scoreboard players operation @s buff_e_test2 += #now temp

# 一番早く切れる時刻を更新する
execute unless score @s buff_next matches -2147483648.. run scoreboard players operation @s buff_next = @s buff_e_test2
scoreboard players operation @s buff_next < @s buff_e_test2

# ステータスを組み立て直す（stutas/hendou_main）
scoreboard players set @s stat_dirty 1
return 1
