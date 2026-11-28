#> tm_workbench:kaji/lv_up/gear_grow/s7

# 防具・アクセサリーの値 7（p_attack）を伸ばす。kaji/lv_up/gear から
# @s ＝ トロッコ

scoreboard players operation #v kaji_tmp = #s7 kaji_tmp
function tm_workbench:kaji/grow
scoreboard players operation #s7 kaji_tmp = #v kaji_tmp
execute store result storage tm_workbench:kaji item.p_attack int 1 run scoreboard players get #s7 kaji_tmp
