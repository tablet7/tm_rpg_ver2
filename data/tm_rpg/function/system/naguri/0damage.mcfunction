#> tm_rpg:system/naguri/0damage
# func用ではない

data modify storage tm_rpg:damage p_damage set value 0
data modify storage tm_rpg:damage m_damage set value 0
data modify storage tm_rpg:damage c_damage set value 0

data modify storage tm_rpg:damage func set value "tm_rpg:system/naguri/non_func"

tag @s add 0damage_ent