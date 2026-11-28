#> tm_workbench:kaji/lv_up/gear_grow/s5

# 防具・アクセサリーの値 5（armor）を伸ばす。kaji/lv_up/gear から
# @s ＝ トロッコ

scoreboard players operation #v kaji_tmp = #s5 kaji_tmp
function tm_workbench:kaji/grow
scoreboard players operation #s5 kaji_tmp = #v kaji_tmp
execute store result storage tm_workbench:kaji item.armor int 1 run scoreboard players get #s5 kaji_tmp
