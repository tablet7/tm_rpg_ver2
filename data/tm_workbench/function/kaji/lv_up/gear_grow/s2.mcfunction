#> tm_workbench:kaji/lv_up/gear_grow/s2

# 防具・アクセサリーの値 2（hp_rege）を伸ばす。kaji/lv_up/gear から
# @s ＝ トロッコ

scoreboard players operation #v kaji_tmp = #s2 kaji_tmp
function tm_workbench:kaji/grow
scoreboard players operation #s2 kaji_tmp = #v kaji_tmp
execute store result storage tm_workbench:kaji item.hp_rege int 1 run scoreboard players get #s2 kaji_tmp
