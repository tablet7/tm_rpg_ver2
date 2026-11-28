#> tm_rpg:system/buff/calc_plus

# バフ（＋）の値に、付けた人の付与効果増加を足す関数。buff/calc から呼ばれる
# 付与効果増加がマイナス（デバフを受けている）でも、デバフにはしない（0 まで）
# 入力・出力: #buff_v temp、入力: #buff_src_power temp
# このファイルは md/system_md/buff/gen_buff.py が作る（手で直さない。直すときは buff_skills.json か gen_buff.py を変えて作り直す）

scoreboard players operation #buff_v temp += #buff_src_power temp
execute if score #buff_v temp matches ..-1 run scoreboard players set #buff_v temp 0
