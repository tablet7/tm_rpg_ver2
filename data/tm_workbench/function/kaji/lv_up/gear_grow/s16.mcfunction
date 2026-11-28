#> tm_workbench:kaji/lv_up/gear_grow/s16

# 防具・アクセサリーの値 16（luck）を伸ばす。kaji/lv_up/gear から
# @s ＝ トロッコ

scoreboard players operation #v kaji_tmp = #s16 kaji_tmp
function tm_workbench:kaji/grow
scoreboard players operation #s16 kaji_tmp = #v kaji_tmp
execute store result storage tm_workbench:kaji item.luck int 1 run scoreboard players get #s16 kaji_tmp
