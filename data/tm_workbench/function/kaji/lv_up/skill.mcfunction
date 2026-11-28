#> tm_workbench:kaji/lv_up/skill

# スキルの伸び: kihon ＋10〜15％、5 Lv ごとに per ＋10〜15％、mp・cooltime ＋10％（強くなる代わりに重くなる）。kaji/lv_up から
# @s ＝ トロッコ
# kihon も per も 0 のスキル（移動・吹き飛ばしなど）はダメージの行が無いので、kihon・per は伸ばさない

execute store result score #kihon kaji_tmp run data get storage tm_workbench:kaji item.kihon
execute store result score #per kaji_tmp run data get storage tm_workbench:kaji item.per
scoreboard players set #dmg kaji_tmp 0
execute unless score #kihon kaji_tmp matches 0 run scoreboard players set #dmg kaji_tmp 1
execute unless score #per kaji_tmp matches 0 run scoreboard players set #dmg kaji_tmp 1
scoreboard players set #lo kaji_tmp 10
scoreboard players set #span kaji_tmp 6
scoreboard players operation #v kaji_tmp = #kihon kaji_tmp
execute if score #dmg kaji_tmp matches 1 run function tm_workbench:kaji/grow
scoreboard players operation #kihon kaji_tmp = #v kaji_tmp
scoreboard players operation #v kaji_tmp = #per kaji_tmp
execute if score #dmg kaji_tmp matches 1 if score #five kaji_tmp matches 0 run function tm_workbench:kaji/grow
scoreboard players operation #per kaji_tmp = #v kaji_tmp
# mp・cooltime ＋10％（最低 ＋1）
scoreboard players set #span kaji_tmp 1
execute store result score #v kaji_tmp run data get storage tm_workbench:kaji item.mp
function tm_workbench:kaji/grow
scoreboard players operation #mp kaji_tmp = #v kaji_tmp
execute store result score #v kaji_tmp run data get storage tm_workbench:kaji item.cooltime
function tm_workbench:kaji/grow
scoreboard players operation #ct kaji_tmp = #v kaji_tmp
execute store result storage tm_workbench:kaji item.kihon int 1 run scoreboard players get #kihon kaji_tmp
execute store result storage tm_workbench:kaji item.per int 1 run scoreboard players get #per kaji_tmp
execute store result storage tm_workbench:kaji item.mp int 1 run scoreboard players get #mp kaji_tmp
execute store result storage tm_workbench:kaji item.cooltime int 1 run scoreboard players get #ct kaji_tmp
item modify entity @s container.10 tm_workbench:kaji/write/skill
execute if score #dmg kaji_tmp matches 1 run item modify entity @s container.10 tm_workbench:kaji/write/skill_dmg
