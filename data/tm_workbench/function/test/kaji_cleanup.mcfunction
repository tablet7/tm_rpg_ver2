#> tm_workbench:test/kaji_cleanup

# 鍛冶台（機能 1）を全部片付ける。手で /function tm_workbench:test/kaji_cleanup を打つ

execute as @e[type=item_display,tag=gui_block,scores={gui_type=1}] at @s run function tm_workbench:gui/block/remove
tellraw @s {"text":"[確認] 鍛冶台を片付けました","color":"aqua"}
