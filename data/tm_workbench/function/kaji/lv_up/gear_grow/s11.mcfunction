#> tm_workbench:kaji/lv_up/gear_grow/s11

# 防具・アクセサリーの値 11（range）を伸ばす。kaji/lv_up/gear から
# @s ＝ トロッコ

scoreboard players operation #v kaji_tmp = #s11 kaji_tmp
function tm_workbench:kaji/grow
scoreboard players operation #s11 kaji_tmp = #v kaji_tmp
execute store result storage tm_workbench:kaji item.range int 1 run scoreboard players get #s11 kaji_tmp
