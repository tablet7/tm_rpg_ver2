#> tm_workbench:gen/mat/add

# 系統 #mat_fam・段階 #mat_grade の素材を #mat_n 個足す（mat/drop/roll から）
# gen_gui.py が作る（手で直さない。md/gui_md/screens.json・items.json・materials.json を直して作り直す）
# @s ＝ 受け取るプレイヤー。#got<段階> gui_tmp にも足す（mat/drop/player がまとめて知らせる）

execute if score #mat_fam gui_tmp matches 1 if score #mat_grade gui_tmp matches 1 run scoreboard players operation @s mat_wood1 += #mat_n gui_tmp
execute if score #mat_fam gui_tmp matches 1 if score #mat_grade gui_tmp matches 2 run scoreboard players operation @s mat_wood2 += #mat_n gui_tmp
execute if score #mat_fam gui_tmp matches 1 if score #mat_grade gui_tmp matches 3 run scoreboard players operation @s mat_wood3 += #mat_n gui_tmp
execute if score #mat_fam gui_tmp matches 1 if score #mat_grade gui_tmp matches 4 run scoreboard players operation @s mat_wood4 += #mat_n gui_tmp
execute if score #mat_fam gui_tmp matches 1 if score #mat_grade gui_tmp matches 5 run scoreboard players operation @s mat_wood5 += #mat_n gui_tmp
execute if score #mat_fam gui_tmp matches 1 if score #mat_grade gui_tmp matches 6 run scoreboard players operation @s mat_wood6 += #mat_n gui_tmp
execute if score #mat_fam gui_tmp matches 2 if score #mat_grade gui_tmp matches 1 run scoreboard players operation @s mat_stone1 += #mat_n gui_tmp
execute if score #mat_fam gui_tmp matches 2 if score #mat_grade gui_tmp matches 2 run scoreboard players operation @s mat_stone2 += #mat_n gui_tmp
execute if score #mat_fam gui_tmp matches 2 if score #mat_grade gui_tmp matches 3 run scoreboard players operation @s mat_stone3 += #mat_n gui_tmp
execute if score #mat_fam gui_tmp matches 2 if score #mat_grade gui_tmp matches 4 run scoreboard players operation @s mat_stone4 += #mat_n gui_tmp
execute if score #mat_fam gui_tmp matches 2 if score #mat_grade gui_tmp matches 5 run scoreboard players operation @s mat_stone5 += #mat_n gui_tmp
execute if score #mat_fam gui_tmp matches 2 if score #mat_grade gui_tmp matches 6 run scoreboard players operation @s mat_stone6 += #mat_n gui_tmp
execute if score #mat_fam gui_tmp matches 3 if score #mat_grade gui_tmp matches 1 run scoreboard players operation @s mat_bio1 += #mat_n gui_tmp
execute if score #mat_fam gui_tmp matches 3 if score #mat_grade gui_tmp matches 2 run scoreboard players operation @s mat_bio2 += #mat_n gui_tmp
execute if score #mat_fam gui_tmp matches 3 if score #mat_grade gui_tmp matches 3 run scoreboard players operation @s mat_bio3 += #mat_n gui_tmp
execute if score #mat_fam gui_tmp matches 3 if score #mat_grade gui_tmp matches 4 run scoreboard players operation @s mat_bio4 += #mat_n gui_tmp
execute if score #mat_fam gui_tmp matches 3 if score #mat_grade gui_tmp matches 5 run scoreboard players operation @s mat_bio5 += #mat_n gui_tmp
execute if score #mat_fam gui_tmp matches 3 if score #mat_grade gui_tmp matches 6 run scoreboard players operation @s mat_bio6 += #mat_n gui_tmp
execute if score #mat_fam gui_tmp matches 4 if score #mat_grade gui_tmp matches 1 run scoreboard players operation @s mat_gem1 += #mat_n gui_tmp
execute if score #mat_fam gui_tmp matches 4 if score #mat_grade gui_tmp matches 2 run scoreboard players operation @s mat_gem2 += #mat_n gui_tmp
execute if score #mat_fam gui_tmp matches 4 if score #mat_grade gui_tmp matches 3 run scoreboard players operation @s mat_gem3 += #mat_n gui_tmp
execute if score #mat_fam gui_tmp matches 4 if score #mat_grade gui_tmp matches 4 run scoreboard players operation @s mat_gem4 += #mat_n gui_tmp
execute if score #mat_fam gui_tmp matches 4 if score #mat_grade gui_tmp matches 5 run scoreboard players operation @s mat_gem5 += #mat_n gui_tmp
execute if score #mat_fam gui_tmp matches 4 if score #mat_grade gui_tmp matches 6 run scoreboard players operation @s mat_gem6 += #mat_n gui_tmp

execute if score #mat_grade gui_tmp matches 1 run scoreboard players operation #got1 gui_tmp += #mat_n gui_tmp
execute if score #mat_grade gui_tmp matches 2 run scoreboard players operation #got2 gui_tmp += #mat_n gui_tmp
execute if score #mat_grade gui_tmp matches 3 run scoreboard players operation #got3 gui_tmp += #mat_n gui_tmp
execute if score #mat_grade gui_tmp matches 4 run scoreboard players operation #got4 gui_tmp += #mat_n gui_tmp
execute if score #mat_grade gui_tmp matches 5 run scoreboard players operation #got5 gui_tmp += #mat_n gui_tmp
execute if score #mat_grade gui_tmp matches 6 run scoreboard players operation #got6 gui_tmp += #mat_n gui_tmp
