#> tm_rpg:system/buff/pct/hp

# 最大HP（hp_score）に、割合のバフの合計 skill_hp_pct（%）をかける関数。buff/pct_apply から呼ばれる
# -100% 以下なら 0 倍（0 以下にならないようにするのは stutas/hendou_main の最後の処理）
# @s ＝ プレイヤーまたは敵
# このファイルは md/system_md/buff/gen_buff.py が作る（手で直さない。直すときは buff_skills.json か gen_buff.py を変えて作り直す）

scoreboard players set #buff_mul temp 100
scoreboard players operation #buff_mul temp += @s skill_hp_pct
execute if score #buff_mul temp matches ..-1 run scoreboard players set #buff_mul temp 0
scoreboard players operation @s hp_score *= #buff_mul temp
scoreboard players operation @s hp_score /= System CONTACT_100
