#> tm_workbench:test/cleanup

# 確認用の台・掲示板（機能 7・8）を全部片付ける。手で /function tm_workbench:test/cleanup を打つ

execute as @e[type=interaction,tag=gui,scores={gui_type=7}] at @s run setblock ~ ~ ~ minecraft:air
execute as @e[type=interaction,tag=gui,scores={gui_type=7}] at @s run function tm_workbench:gui/block/remove
execute as @e[type=item_display,tag=gui_block,scores={gui_type=8}] at @s run function tm_workbench:gui/block/remove
tellraw @s {"text":"[確認] 確認用の台・掲示板を片付けました","color":"aqua"}
