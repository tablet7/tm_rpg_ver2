#> tm_workbench:kaji/lv_up/gear_grow/s14

# 防具・アクセサリーの値 14（evasion）を伸ばす。kaji/lv_up/gear から
# @s ＝ トロッコ

scoreboard players operation #v kaji_tmp = #s14 kaji_tmp
function tm_workbench:kaji/grow
scoreboard players operation #s14 kaji_tmp = #v kaji_tmp
execute store result storage tm_workbench:kaji item.evasion int 1 run scoreboard players get #s14 kaji_tmp
