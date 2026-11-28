#> tm_workbench:kaji/lv_up/gear_grow/s12

# 防具・アクセサリーの値 12（crit_per）を伸ばす。kaji/lv_up/gear から
# @s ＝ トロッコ

scoreboard players operation #v kaji_tmp = #s12 kaji_tmp
function tm_workbench:kaji/grow
scoreboard players operation #s12 kaji_tmp = #v kaji_tmp
execute store result storage tm_workbench:kaji item.crit_per int 1 run scoreboard players get #s12 kaji_tmp
