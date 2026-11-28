#> tm_workbench:gen/block/place_t7

# 機能 7（確認用の掲示板）の場所を置く。ブロックと、少し大きい interaction（tag gui）。gen/block/place から
# gen_gui.py が作る（手で直さない。md/gui_md/screens.json・items.json・materials.json を直して作り直す）
# いる場所 ＝ ブロックの角（gui/block/place が align xyz する）。#place_id gui_tmp ＝ gui_id

setblock ~ ~ ~ minecraft:crafting_table
summon minecraft:interaction ~0.5 ~ ~0.5 {Tags:["gui","gui_new"],width:1.02f,height:1.02f,response:1b}
scoreboard players set @e[type=interaction,tag=gui_new,distance=..1,limit=1] gui_type 7
scoreboard players operation @e[type=interaction,tag=gui_new,distance=..1,limit=1] gui_id = #place_id gui_tmp
tag @e[type=interaction,tag=gui_new,distance=..1] remove gui_new
