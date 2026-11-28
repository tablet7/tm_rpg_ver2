#> tm_rpg:system/buff/calc

# バフ・デバフの値を、付与効果増加で変える関数。skill/<id>/add・potion/add から、ステータスごとに呼ばれる
#   バフ（＋）  … 付けた人の付与効果増加を足す（0 より下にはしない）
#   デバフ（－）… 付けた人の付与効果増加のぶん強くする（引く）
#                 相手側から受けたデバフ（敵がプレイヤーに・プレイヤーが敵に付けた）は、さらに受けた人の付与効果増加を足して弱める（0 まで。0 になれば効かない）
#                 自分や味方が付けたデバフ（攻撃を上げて防御を下げる技など）は弱めない
#   0 … 使わないステータスなので変えない
# 入力: #buff_v temp ＝ 値、#buff_src_power temp ＝ 付けた人の付与効果増加、#buff_side temp ＝ 1 なら敵が付けた
# 出力: #buff_v temp ＝ 変えたあとの値
# @s ＝ バフを付ける相手（tag enemy があれば敵）
# このファイルは md/system_md/buff/gen_buff.py が作る（手で直さない。直すときは buff_skills.json か gen_buff.py を変えて作り直す）

execute if score #buff_v temp matches 0 run return 0
execute if score #buff_v temp matches 1.. run return run function tm_rpg:system/buff/calc_plus

# デバフ
scoreboard players operation #buff_v temp -= #buff_src_power temp
# 付けた側（#buff_side）と受けた側（#buff_tside）が違えば、受けた人の付与効果増加で弱める
execute store success score #buff_tside temp if entity @s[tag=enemy]
execute unless score #buff_side temp = #buff_tside temp run scoreboard players operation #buff_v temp += @s sustain_power
execute if score #buff_v temp matches 1.. run scoreboard players set #buff_v temp 0
