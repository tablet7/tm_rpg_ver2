#> tm_workbench:kaji/lv_up/gear_grow/s13

# 防具・アクセサリーの値 13（crit_damage）を伸ばす。kaji/lv_up/gear から
# @s ＝ トロッコ

scoreboard players operation #v kaji_tmp = #s13 kaji_tmp
function tm_workbench:kaji/grow
scoreboard players operation #s13 kaji_tmp = #v kaji_tmp
execute store result storage tm_workbench:kaji item.crit_damage int 1 run scoreboard players get #s13 kaji_tmp
