#> tm_workbench:kaji/lv_up/weapon

# 武器の伸び: kihon ＋5〜10％、5 Lv ごとに per ＋5〜10％。kaji/lv_up から
# @s ＝ トロッコ

execute store result score #v kaji_tmp run data get storage tm_workbench:kaji item.kihon
scoreboard players set #lo kaji_tmp 5
scoreboard players set #span kaji_tmp 6
function tm_workbench:kaji/grow
scoreboard players operation #kihon kaji_tmp = #v kaji_tmp
execute store result score #v kaji_tmp run data get storage tm_workbench:kaji item.per
execute if score #five kaji_tmp matches 0 run function tm_workbench:kaji/grow
scoreboard players operation #per kaji_tmp = #v kaji_tmp
execute store result storage tm_workbench:kaji item.kihon int 1 run scoreboard players get #kihon kaji_tmp
execute store result storage tm_workbench:kaji item.per int 1 run scoreboard players get #per kaji_tmp
item modify entity @s container.10 tm_workbench:kaji/write/weapon
