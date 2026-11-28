#> tm_workbench:gen/kaji/conv_do

# 素材の変換: 系統 #cvfam・段階 #cvg の素材を #cvq 個減らし、1 つ下の段階を #cvp 個増やす（kaji/conv/grade から。足りるかは先に確かめてある）
# gen_gui.py が作る（手で直さない。md/gui_md/screens.json・items.json・materials.json を直して作り直す）
# @s ＝ プレイヤー

execute if score #cvfam kaji_tmp matches 1 if score #cvg kaji_tmp matches 2 run scoreboard players operation @s mat_wood2 -= #cvq kaji_tmp
execute if score #cvfam kaji_tmp matches 1 if score #cvg kaji_tmp matches 2 run scoreboard players operation @s mat_wood1 += #cvp kaji_tmp
execute if score #cvfam kaji_tmp matches 1 if score #cvg kaji_tmp matches 3 run scoreboard players operation @s mat_wood3 -= #cvq kaji_tmp
execute if score #cvfam kaji_tmp matches 1 if score #cvg kaji_tmp matches 3 run scoreboard players operation @s mat_wood2 += #cvp kaji_tmp
execute if score #cvfam kaji_tmp matches 1 if score #cvg kaji_tmp matches 4 run scoreboard players operation @s mat_wood4 -= #cvq kaji_tmp
execute if score #cvfam kaji_tmp matches 1 if score #cvg kaji_tmp matches 4 run scoreboard players operation @s mat_wood3 += #cvp kaji_tmp
execute if score #cvfam kaji_tmp matches 1 if score #cvg kaji_tmp matches 5 run scoreboard players operation @s mat_wood5 -= #cvq kaji_tmp
execute if score #cvfam kaji_tmp matches 1 if score #cvg kaji_tmp matches 5 run scoreboard players operation @s mat_wood4 += #cvp kaji_tmp
execute if score #cvfam kaji_tmp matches 1 if score #cvg kaji_tmp matches 6 run scoreboard players operation @s mat_wood6 -= #cvq kaji_tmp
execute if score #cvfam kaji_tmp matches 1 if score #cvg kaji_tmp matches 6 run scoreboard players operation @s mat_wood5 += #cvp kaji_tmp
execute if score #cvfam kaji_tmp matches 2 if score #cvg kaji_tmp matches 2 run scoreboard players operation @s mat_stone2 -= #cvq kaji_tmp
execute if score #cvfam kaji_tmp matches 2 if score #cvg kaji_tmp matches 2 run scoreboard players operation @s mat_stone1 += #cvp kaji_tmp
execute if score #cvfam kaji_tmp matches 2 if score #cvg kaji_tmp matches 3 run scoreboard players operation @s mat_stone3 -= #cvq kaji_tmp
execute if score #cvfam kaji_tmp matches 2 if score #cvg kaji_tmp matches 3 run scoreboard players operation @s mat_stone2 += #cvp kaji_tmp
execute if score #cvfam kaji_tmp matches 2 if score #cvg kaji_tmp matches 4 run scoreboard players operation @s mat_stone4 -= #cvq kaji_tmp
execute if score #cvfam kaji_tmp matches 2 if score #cvg kaji_tmp matches 4 run scoreboard players operation @s mat_stone3 += #cvp kaji_tmp
execute if score #cvfam kaji_tmp matches 2 if score #cvg kaji_tmp matches 5 run scoreboard players operation @s mat_stone5 -= #cvq kaji_tmp
execute if score #cvfam kaji_tmp matches 2 if score #cvg kaji_tmp matches 5 run scoreboard players operation @s mat_stone4 += #cvp kaji_tmp
execute if score #cvfam kaji_tmp matches 2 if score #cvg kaji_tmp matches 6 run scoreboard players operation @s mat_stone6 -= #cvq kaji_tmp
execute if score #cvfam kaji_tmp matches 2 if score #cvg kaji_tmp matches 6 run scoreboard players operation @s mat_stone5 += #cvp kaji_tmp
execute if score #cvfam kaji_tmp matches 3 if score #cvg kaji_tmp matches 2 run scoreboard players operation @s mat_bio2 -= #cvq kaji_tmp
execute if score #cvfam kaji_tmp matches 3 if score #cvg kaji_tmp matches 2 run scoreboard players operation @s mat_bio1 += #cvp kaji_tmp
execute if score #cvfam kaji_tmp matches 3 if score #cvg kaji_tmp matches 3 run scoreboard players operation @s mat_bio3 -= #cvq kaji_tmp
execute if score #cvfam kaji_tmp matches 3 if score #cvg kaji_tmp matches 3 run scoreboard players operation @s mat_bio2 += #cvp kaji_tmp
execute if score #cvfam kaji_tmp matches 3 if score #cvg kaji_tmp matches 4 run scoreboard players operation @s mat_bio4 -= #cvq kaji_tmp
execute if score #cvfam kaji_tmp matches 3 if score #cvg kaji_tmp matches 4 run scoreboard players operation @s mat_bio3 += #cvp kaji_tmp
execute if score #cvfam kaji_tmp matches 3 if score #cvg kaji_tmp matches 5 run scoreboard players operation @s mat_bio5 -= #cvq kaji_tmp
execute if score #cvfam kaji_tmp matches 3 if score #cvg kaji_tmp matches 5 run scoreboard players operation @s mat_bio4 += #cvp kaji_tmp
execute if score #cvfam kaji_tmp matches 3 if score #cvg kaji_tmp matches 6 run scoreboard players operation @s mat_bio6 -= #cvq kaji_tmp
execute if score #cvfam kaji_tmp matches 3 if score #cvg kaji_tmp matches 6 run scoreboard players operation @s mat_bio5 += #cvp kaji_tmp
execute if score #cvfam kaji_tmp matches 4 if score #cvg kaji_tmp matches 2 run scoreboard players operation @s mat_gem2 -= #cvq kaji_tmp
execute if score #cvfam kaji_tmp matches 4 if score #cvg kaji_tmp matches 2 run scoreboard players operation @s mat_gem1 += #cvp kaji_tmp
execute if score #cvfam kaji_tmp matches 4 if score #cvg kaji_tmp matches 3 run scoreboard players operation @s mat_gem3 -= #cvq kaji_tmp
execute if score #cvfam kaji_tmp matches 4 if score #cvg kaji_tmp matches 3 run scoreboard players operation @s mat_gem2 += #cvp kaji_tmp
execute if score #cvfam kaji_tmp matches 4 if score #cvg kaji_tmp matches 4 run scoreboard players operation @s mat_gem4 -= #cvq kaji_tmp
execute if score #cvfam kaji_tmp matches 4 if score #cvg kaji_tmp matches 4 run scoreboard players operation @s mat_gem3 += #cvp kaji_tmp
execute if score #cvfam kaji_tmp matches 4 if score #cvg kaji_tmp matches 5 run scoreboard players operation @s mat_gem5 -= #cvq kaji_tmp
execute if score #cvfam kaji_tmp matches 4 if score #cvg kaji_tmp matches 5 run scoreboard players operation @s mat_gem4 += #cvp kaji_tmp
execute if score #cvfam kaji_tmp matches 4 if score #cvg kaji_tmp matches 6 run scoreboard players operation @s mat_gem6 -= #cvq kaji_tmp
execute if score #cvfam kaji_tmp matches 4 if score #cvg kaji_tmp matches 6 run scoreboard players operation @s mat_gem5 += #cvp kaji_tmp
