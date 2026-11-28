#> tm_workbench:kaji/lv_up/gear_grow/s15

# 防具・アクセサリーの値 15（job_bonus）を伸ばす。kaji/lv_up/gear から
# @s ＝ トロッコ

scoreboard players operation #v kaji_tmp = #s15 kaji_tmp
function tm_workbench:kaji/grow
scoreboard players operation #s15 kaji_tmp = #v kaji_tmp
execute store result storage tm_workbench:kaji item.job_bonus int 1 run scoreboard players get #s15 kaji_tmp
