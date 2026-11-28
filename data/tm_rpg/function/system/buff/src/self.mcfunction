#> tm_rpg:system/buff/src/self

# 付けた人の値（#buff_src_power / #buff_src_time / #buff_side temp）を、@s 自身から入れる関数
# 自分に付けるバフ・ポーション、弾を使わずに相手へ付けるスキルで、付ける前に付ける人で呼ぶ
# @s ＝ 付ける人（プレイヤーか敵。tag enemy があれば敵が付けたことになる）
# このファイルは md/system_md/buff/gen_buff.py が作る（手で直さない。直すときは buff_skills.json か gen_buff.py を変えて作り直す）

scoreboard players operation #buff_src_power temp = @s sustain_power
scoreboard players operation #buff_src_time temp = @s sustain_time
execute store success score #buff_side temp if entity @s[tag=enemy]
