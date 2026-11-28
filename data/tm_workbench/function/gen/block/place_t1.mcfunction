#> tm_workbench:gen/block/place_t1

# 機能 1（鍛冶台）のブロックを置く。バリア＋見た目の item_display（tag gui_block）。gen/block/place から
# gen_gui.py が作る（手で直さない。md/gui_md/screens.json・items.json・materials.json を直して作り直す）
# いる場所 ＝ ブロックの角（gui/block/place が align xyz する）

setblock ~ ~ ~ minecraft:barrier
summon minecraft:item_display ~0.5 ~0.5 ~0.5 {Tags:["gui_block","gui_new"],item:{id:"minecraft:smithing_table",count:1},item_display:"none"}
scoreboard players set @e[type=item_display,tag=gui_new,distance=..1,limit=1] gui_type 1
tag @e[type=item_display,tag=gui_new,distance=..1] remove gui_new
