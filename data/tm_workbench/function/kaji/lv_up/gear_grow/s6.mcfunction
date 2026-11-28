#> tm_workbench:kaji/lv_up/gear_grow/s6

# 防具・アクセサリーの値 6（magic_armor）を伸ばす。kaji/lv_up/gear から
# @s ＝ トロッコ

scoreboard players operation #v kaji_tmp = #s6 kaji_tmp
function tm_workbench:kaji/grow
scoreboard players operation #s6 kaji_tmp = #v kaji_tmp
execute store result storage tm_workbench:kaji item.magic_armor int 1 run scoreboard players get #s6 kaji_tmp
