#> tm_workbench:kaji/lv_up/gear_grow/s8

# 防具・アクセサリーの値 8（m_attack）を伸ばす。kaji/lv_up/gear から
# @s ＝ トロッコ

scoreboard players operation #v kaji_tmp = #s8 kaji_tmp
function tm_workbench:kaji/grow
scoreboard players operation #s8 kaji_tmp = #v kaji_tmp
execute store result storage tm_workbench:kaji item.m_attack int 1 run scoreboard players get #s8 kaji_tmp
