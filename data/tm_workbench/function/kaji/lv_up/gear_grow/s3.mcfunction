#> tm_workbench:kaji/lv_up/gear_grow/s3

# 防具・アクセサリーの値 3（mp）を伸ばす。kaji/lv_up/gear から
# @s ＝ トロッコ

scoreboard players operation #v kaji_tmp = #s3 kaji_tmp
function tm_workbench:kaji/grow
scoreboard players operation #s3 kaji_tmp = #v kaji_tmp
execute store result storage tm_workbench:kaji item.mp int 1 run scoreboard players get #s3 kaji_tmp
