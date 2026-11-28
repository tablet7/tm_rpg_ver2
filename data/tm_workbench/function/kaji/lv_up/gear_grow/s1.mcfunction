#> tm_workbench:kaji/lv_up/gear_grow/s1

# 防具・アクセサリーの値 1（hp）を伸ばす。kaji/lv_up/gear から
# @s ＝ トロッコ

scoreboard players operation #v kaji_tmp = #s1 kaji_tmp
function tm_workbench:kaji/grow
scoreboard players operation #s1 kaji_tmp = #v kaji_tmp
execute store result storage tm_workbench:kaji item.hp int 1 run scoreboard players get #s1 kaji_tmp
