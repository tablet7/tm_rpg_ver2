#> tm_workbench:gen/kaji/conv_pick

# 素材の変換: 押した段階 #cvg の数を #cvq・#cvp・#cvok kaji_tmp に写す（kaji/conv/grade から）
# gen_gui.py が作る（手で直さない。md/gui_md/screens.json・items.json・materials.json を直して作り直す）

scoreboard players set #cvq kaji_tmp 0
scoreboard players set #cvp kaji_tmp 0
scoreboard players set #cvok kaji_tmp 0
execute if score #cvg kaji_tmp matches 2 run scoreboard players operation #cvq kaji_tmp = #cvq2 kaji_tmp
execute if score #cvg kaji_tmp matches 2 run scoreboard players operation #cvp kaji_tmp = #cvp2 kaji_tmp
execute if score #cvg kaji_tmp matches 2 run scoreboard players operation #cvok kaji_tmp = #cvok2 kaji_tmp
execute if score #cvg kaji_tmp matches 3 run scoreboard players operation #cvq kaji_tmp = #cvq3 kaji_tmp
execute if score #cvg kaji_tmp matches 3 run scoreboard players operation #cvp kaji_tmp = #cvp3 kaji_tmp
execute if score #cvg kaji_tmp matches 3 run scoreboard players operation #cvok kaji_tmp = #cvok3 kaji_tmp
execute if score #cvg kaji_tmp matches 4 run scoreboard players operation #cvq kaji_tmp = #cvq4 kaji_tmp
execute if score #cvg kaji_tmp matches 4 run scoreboard players operation #cvp kaji_tmp = #cvp4 kaji_tmp
execute if score #cvg kaji_tmp matches 4 run scoreboard players operation #cvok kaji_tmp = #cvok4 kaji_tmp
execute if score #cvg kaji_tmp matches 5 run scoreboard players operation #cvq kaji_tmp = #cvq5 kaji_tmp
execute if score #cvg kaji_tmp matches 5 run scoreboard players operation #cvp kaji_tmp = #cvp5 kaji_tmp
execute if score #cvg kaji_tmp matches 5 run scoreboard players operation #cvok kaji_tmp = #cvok5 kaji_tmp
execute if score #cvg kaji_tmp matches 6 run scoreboard players operation #cvq kaji_tmp = #cvq6 kaji_tmp
execute if score #cvg kaji_tmp matches 6 run scoreboard players operation #cvp kaji_tmp = #cvp6 kaji_tmp
execute if score #cvg kaji_tmp matches 6 run scoreboard players operation #cvok kaji_tmp = #cvok6 kaji_tmp
