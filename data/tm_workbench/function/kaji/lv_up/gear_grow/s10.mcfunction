#> tm_workbench:kaji/lv_up/gear_grow/s10

# 防具・アクセサリーの値 10（sustaintime）を伸ばす。kaji/lv_up/gear から
# @s ＝ トロッコ

scoreboard players operation #v kaji_tmp = #s10 kaji_tmp
function tm_workbench:kaji/grow
scoreboard players operation #s10 kaji_tmp = #v kaji_tmp
execute store result storage tm_workbench:kaji item.sustaintime int 1 run scoreboard players get #s10 kaji_tmp
