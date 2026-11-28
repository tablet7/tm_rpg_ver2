#> tm_rpg:system/buff/calc_time

# バフが切れる時刻を求める関数。skill/<id>/add・potion/add から呼ばれる
# 時間（秒）に付けた人の持続時間増加（秒）をそのまま足す
#   自分や味方が付けたとき … 持続時間増加がマイナスでも 1 秒は残す
#   相手側から受けたとき（敵がプレイヤーに・プレイヤーが敵に付けた）… さらに受けた人の持続時間増加を引く。0 秒以下なら付けない
# 入力: #buff_time temp ＝ 時間（秒）、#buff_src_time temp ＝ 付けた人の持続時間増加、#buff_side temp ＝ 1 なら敵が付けた
# 出力: #buff_end temp ＝ 切れる時刻（今の gametime ＋ 秒 × 20）。付けられるなら 1、付けないなら return fail
#   #buff_tside temp ＝ 受けた側（1 なら敵）。buff/calc も使う
# @s ＝ バフを付ける相手（tag enemy があれば敵）
# このファイルは md/system_md/buff/gen_buff.py が作る（手で直さない。直すときは buff_skills.json か gen_buff.py を変えて作り直す）

scoreboard players operation #buff_end temp = #buff_time temp
scoreboard players operation #buff_end temp += #buff_src_time temp
execute store success score #buff_tside temp if entity @s[tag=enemy]
execute if score #buff_side temp = #buff_tside temp if score #buff_end temp matches ..0 run scoreboard players set #buff_end temp 1
execute unless score #buff_side temp = #buff_tside temp run scoreboard players operation #buff_end temp -= @s sustain_time
execute if score #buff_end temp matches ..0 run return fail
scoreboard players operation #buff_end temp *= System CONTACT_20
scoreboard players operation #buff_end temp += #now temp
return 1
