#> tm_rpg:system/naguri/0damage

# 殴りのダメージを0にする関数（func 引数用ではない）。naguri/process_damage から、殴った側が tag=temp_victim（ノックバック用）のときに呼ばれる
# @s ＝ 殴られた側

data modify storage tm_rpg:damage p_damage set value 0
data modify storage tm_rpg:damage m_damage set value 0
data modify storage tm_rpg:damage c_damage set value 0

data modify storage tm_rpg:damage func set value "tm_rpg:system/naguri/non_func"

tag @s add 0damage_ent
