#> tm_workbench:gen/kaji/pay

# 強化の素材を払う（kaji/kyouka/do から。足りるかは先に確かめてある）
# gen_gui.py が作る（手で直さない。md/gui_md/screens.json・items.json・materials.json を直して作り直す）
# @s ＝ プレイヤー。#res・#n<段階>・#gn<段階> kaji_tmp

execute if score #res kaji_tmp matches 1 run scoreboard players operation @s mat_wood1 -= #n1 kaji_tmp
execute if score #res kaji_tmp matches 1 run scoreboard players operation @s mat_wood2 -= #n2 kaji_tmp
execute if score #res kaji_tmp matches 1 run scoreboard players operation @s mat_wood3 -= #n3 kaji_tmp
execute if score #res kaji_tmp matches 1 run scoreboard players operation @s mat_wood4 -= #n4 kaji_tmp
execute if score #res kaji_tmp matches 1 run scoreboard players operation @s mat_wood5 -= #n5 kaji_tmp
execute if score #res kaji_tmp matches 1 run scoreboard players operation @s mat_wood6 -= #n6 kaji_tmp
execute if score #res kaji_tmp matches 2 run scoreboard players operation @s mat_stone1 -= #n1 kaji_tmp
execute if score #res kaji_tmp matches 2 run scoreboard players operation @s mat_stone2 -= #n2 kaji_tmp
execute if score #res kaji_tmp matches 2 run scoreboard players operation @s mat_stone3 -= #n3 kaji_tmp
execute if score #res kaji_tmp matches 2 run scoreboard players operation @s mat_stone4 -= #n4 kaji_tmp
execute if score #res kaji_tmp matches 2 run scoreboard players operation @s mat_stone5 -= #n5 kaji_tmp
execute if score #res kaji_tmp matches 2 run scoreboard players operation @s mat_stone6 -= #n6 kaji_tmp
execute if score #res kaji_tmp matches 3 run scoreboard players operation @s mat_bio1 -= #n1 kaji_tmp
execute if score #res kaji_tmp matches 3 run scoreboard players operation @s mat_bio2 -= #n2 kaji_tmp
execute if score #res kaji_tmp matches 3 run scoreboard players operation @s mat_bio3 -= #n3 kaji_tmp
execute if score #res kaji_tmp matches 3 run scoreboard players operation @s mat_bio4 -= #n4 kaji_tmp
execute if score #res kaji_tmp matches 3 run scoreboard players operation @s mat_bio5 -= #n5 kaji_tmp
execute if score #res kaji_tmp matches 3 run scoreboard players operation @s mat_bio6 -= #n6 kaji_tmp
scoreboard players operation @s mat_gem1 -= #gn1 kaji_tmp
scoreboard players operation @s mat_gem2 -= #gn2 kaji_tmp
scoreboard players operation @s mat_gem3 -= #gn3 kaji_tmp
scoreboard players operation @s mat_gem4 -= #gn4 kaji_tmp
scoreboard players operation @s mat_gem5 -= #gn5 kaji_tmp
scoreboard players operation @s mat_gem6 -= #gn6 kaji_tmp
