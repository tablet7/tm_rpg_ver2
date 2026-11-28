#> tm_rpg:system/buff/src/tama

# 付けた人の値（#buff_src_power / #buff_src_time / #buff_side temp）を、当たった弾から入れる関数
# 弾の当たったときの関数（func）で、バフを付ける前に呼ぶ（player/skill/main_projectile/hit_prepare が入れた #tama_* を写す）
# このファイルは md/system_md/buff/gen_buff.py が作る（手で直さない。直すときは buff_skills.json か gen_buff.py を変えて作り直す）

scoreboard players operation #buff_src_power temp = #tama_sustain_power temp
scoreboard players operation #buff_src_time temp = #tama_sustain_time temp
scoreboard players operation #buff_side temp = #tama_side temp
