#> tm_workbench:kaji/lv_up/gear_grow/s4

# 防具・アクセサリーの値 4（mp_rege）を伸ばす。kaji/lv_up/gear から
# @s ＝ トロッコ

scoreboard players operation #v kaji_tmp = #s4 kaji_tmp
function tm_workbench:kaji/grow
scoreboard players operation #s4 kaji_tmp = #v kaji_tmp
execute store result storage tm_workbench:kaji item.mp_rege int 1 run scoreboard players get #s4 kaji_tmp
