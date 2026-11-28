#> tm_rpg:system/buff/skill/test2/add

# スキルのバフ「テスト用2（物理攻撃・物理防御・最大HP）」を付ける関数。スキルの関数から呼ぶ
# かかっているときにもう一度付けると、時間も値も上書きする（前に足した値を引いてから足し直す）
# ほかのスキルのバフとは重なる（足し算になる）
# 入力: #buff_time temp ＝ 時間（秒）、#buff_pattack temp ＝ 物理攻撃、#buff_armor temp ＝ 物理防御、#buff_hp temp ＝ 最大HP（マイナスならデバフ）
#   付けた人の値: #buff_src_power temp ＝ 付与効果増加、#buff_src_time temp ＝ 持続時間増加（秒）、#buff_side temp ＝ 1 なら敵が付けた
#     buff/src/self（付ける人で呼ぶ）か buff/src/tama（弾の func で呼ぶ）で入れる。強さの変え方は buff/calc
#   入力は毎回すべて入れる（前のスキルの値が temp に残っているため）。入力の temp は書き換えないので、範囲の技で何人に続けて呼んでもよい
# 出力: 付けられたら 1、時間が 1 秒未満なら付けない（return fail）
# @s ＝ バフを付ける相手（プレイヤーか敵）
# このファイルは md/system_md/buff/gen_buff.py が作る（手で直さない。直すときは buff_skills.json か gen_buff.py を変えて作り直す）

execute unless score #buff_time temp matches 1.. run return fail

# 切れる時刻（今の gametime ＋（秒 ＋ 付けた人の持続時間増加 − 相手側から受けたなら受けた人の持続時間増加）× 20。buff/calc_time）
# 0 秒以下なら付けない（かかっているバフもそのまま）
execute unless function tm_rpg:system/buff/calc_time run return fail

# かかっていたら、前に足した値を引く
execute if score @s buff_e_test2 matches -2147483648.. run function tm_rpg:system/buff/skill/test2/remove

# 付与効果増加で強さを変えてから（buff/calc）、値を覚えて、合計に足す
scoreboard players operation #buff_v temp = #buff_pattack temp
function tm_rpg:system/buff/calc
scoreboard players operation @s buff_v_test2_pattack = #buff_v temp
scoreboard players operation @s skill_pattack_buff += @s buff_v_test2_pattack
scoreboard players operation #buff_v temp = #buff_armor temp
function tm_rpg:system/buff/calc
scoreboard players operation @s buff_v_test2_armor = #buff_v temp
scoreboard players operation @s skill_armor_buff += @s buff_v_test2_armor
scoreboard players operation #buff_v temp = #buff_hp temp
function tm_rpg:system/buff/calc
scoreboard players operation @s buff_v_test2_hp = #buff_v temp
scoreboard players operation @s skill_hp_buff += @s buff_v_test2_hp

# 切れる時刻（最初に buff/calc_time で求めた #buff_end temp）
scoreboard players operation @s buff_e_test2 = #buff_end temp

# 一番早く切れる時刻を更新する
execute unless score @s buff_next matches -2147483648.. run scoreboard players operation @s buff_next = @s buff_e_test2
scoreboard players operation @s buff_next < @s buff_e_test2

# ステータスを組み立て直す（stutas/hendou_main）
scoreboard players set @s stat_dirty 1
return 1
