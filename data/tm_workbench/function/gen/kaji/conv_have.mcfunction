#> tm_workbench:gen/kaji/conv_have

# 素材の変換: 選んだ系統の持っている数を #cvh<段階> kaji_tmp に入れる（kaji/refresh/conv・kaji/conv/grade から）
# gen_gui.py が作る（手で直さない。md/gui_md/screens.json・items.json・materials.json を直して作り直す）
# @s ＝ プレイヤー。#cvfam kaji_tmp ＝ 系統の番号

execute if score #cvfam kaji_tmp matches 1 run scoreboard players operation #cvh1 kaji_tmp = @s mat_wood1
execute if score #cvfam kaji_tmp matches 1 run scoreboard players operation #cvh2 kaji_tmp = @s mat_wood2
execute if score #cvfam kaji_tmp matches 1 run scoreboard players operation #cvh3 kaji_tmp = @s mat_wood3
execute if score #cvfam kaji_tmp matches 1 run scoreboard players operation #cvh4 kaji_tmp = @s mat_wood4
execute if score #cvfam kaji_tmp matches 1 run scoreboard players operation #cvh5 kaji_tmp = @s mat_wood5
execute if score #cvfam kaji_tmp matches 1 run scoreboard players operation #cvh6 kaji_tmp = @s mat_wood6
execute if score #cvfam kaji_tmp matches 2 run scoreboard players operation #cvh1 kaji_tmp = @s mat_stone1
execute if score #cvfam kaji_tmp matches 2 run scoreboard players operation #cvh2 kaji_tmp = @s mat_stone2
execute if score #cvfam kaji_tmp matches 2 run scoreboard players operation #cvh3 kaji_tmp = @s mat_stone3
execute if score #cvfam kaji_tmp matches 2 run scoreboard players operation #cvh4 kaji_tmp = @s mat_stone4
execute if score #cvfam kaji_tmp matches 2 run scoreboard players operation #cvh5 kaji_tmp = @s mat_stone5
execute if score #cvfam kaji_tmp matches 2 run scoreboard players operation #cvh6 kaji_tmp = @s mat_stone6
execute if score #cvfam kaji_tmp matches 3 run scoreboard players operation #cvh1 kaji_tmp = @s mat_bio1
execute if score #cvfam kaji_tmp matches 3 run scoreboard players operation #cvh2 kaji_tmp = @s mat_bio2
execute if score #cvfam kaji_tmp matches 3 run scoreboard players operation #cvh3 kaji_tmp = @s mat_bio3
execute if score #cvfam kaji_tmp matches 3 run scoreboard players operation #cvh4 kaji_tmp = @s mat_bio4
execute if score #cvfam kaji_tmp matches 3 run scoreboard players operation #cvh5 kaji_tmp = @s mat_bio5
execute if score #cvfam kaji_tmp matches 3 run scoreboard players operation #cvh6 kaji_tmp = @s mat_bio6
execute if score #cvfam kaji_tmp matches 4 run scoreboard players operation #cvh1 kaji_tmp = @s mat_gem1
execute if score #cvfam kaji_tmp matches 4 run scoreboard players operation #cvh2 kaji_tmp = @s mat_gem2
execute if score #cvfam kaji_tmp matches 4 run scoreboard players operation #cvh3 kaji_tmp = @s mat_gem3
execute if score #cvfam kaji_tmp matches 4 run scoreboard players operation #cvh4 kaji_tmp = @s mat_gem4
execute if score #cvfam kaji_tmp matches 4 run scoreboard players operation #cvh5 kaji_tmp = @s mat_gem5
execute if score #cvfam kaji_tmp matches 4 run scoreboard players operation #cvh6 kaji_tmp = @s mat_gem6
