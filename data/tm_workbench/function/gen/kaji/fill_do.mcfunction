#> tm_workbench:gen/kaji/fill_do

# 強化の「足りない分を変換」: 計画（#flk・#glk）どおりに崩す（kaji/fill/do から。#flst 1 のときだけ）
# gen_gui.py が作る（手で直さない。md/gui_md/screens.json・items.json・materials.json を直して作り直す）
# @s ＝ プレイヤー。#res kaji_tmp ＝ 装備の upgrade_res

execute if score #res kaji_tmp matches 1 run scoreboard players operation @s mat_wood2 -= #flk2 kaji_tmp
execute if score #res kaji_tmp matches 1 run scoreboard players operation @s mat_wood1 += #flp2 kaji_tmp
execute if score #res kaji_tmp matches 1 run scoreboard players operation @s mat_wood3 -= #flk3 kaji_tmp
execute if score #res kaji_tmp matches 1 run scoreboard players operation @s mat_wood2 += #flp3 kaji_tmp
execute if score #res kaji_tmp matches 1 run scoreboard players operation @s mat_wood4 -= #flk4 kaji_tmp
execute if score #res kaji_tmp matches 1 run scoreboard players operation @s mat_wood3 += #flp4 kaji_tmp
execute if score #res kaji_tmp matches 1 run scoreboard players operation @s mat_wood5 -= #flk5 kaji_tmp
execute if score #res kaji_tmp matches 1 run scoreboard players operation @s mat_wood4 += #flp5 kaji_tmp
execute if score #res kaji_tmp matches 1 run scoreboard players operation @s mat_wood6 -= #flk6 kaji_tmp
execute if score #res kaji_tmp matches 1 run scoreboard players operation @s mat_wood5 += #flp6 kaji_tmp
execute if score #res kaji_tmp matches 2 run scoreboard players operation @s mat_stone2 -= #flk2 kaji_tmp
execute if score #res kaji_tmp matches 2 run scoreboard players operation @s mat_stone1 += #flp2 kaji_tmp
execute if score #res kaji_tmp matches 2 run scoreboard players operation @s mat_stone3 -= #flk3 kaji_tmp
execute if score #res kaji_tmp matches 2 run scoreboard players operation @s mat_stone2 += #flp3 kaji_tmp
execute if score #res kaji_tmp matches 2 run scoreboard players operation @s mat_stone4 -= #flk4 kaji_tmp
execute if score #res kaji_tmp matches 2 run scoreboard players operation @s mat_stone3 += #flp4 kaji_tmp
execute if score #res kaji_tmp matches 2 run scoreboard players operation @s mat_stone5 -= #flk5 kaji_tmp
execute if score #res kaji_tmp matches 2 run scoreboard players operation @s mat_stone4 += #flp5 kaji_tmp
execute if score #res kaji_tmp matches 2 run scoreboard players operation @s mat_stone6 -= #flk6 kaji_tmp
execute if score #res kaji_tmp matches 2 run scoreboard players operation @s mat_stone5 += #flp6 kaji_tmp
execute if score #res kaji_tmp matches 3 run scoreboard players operation @s mat_bio2 -= #flk2 kaji_tmp
execute if score #res kaji_tmp matches 3 run scoreboard players operation @s mat_bio1 += #flp2 kaji_tmp
execute if score #res kaji_tmp matches 3 run scoreboard players operation @s mat_bio3 -= #flk3 kaji_tmp
execute if score #res kaji_tmp matches 3 run scoreboard players operation @s mat_bio2 += #flp3 kaji_tmp
execute if score #res kaji_tmp matches 3 run scoreboard players operation @s mat_bio4 -= #flk4 kaji_tmp
execute if score #res kaji_tmp matches 3 run scoreboard players operation @s mat_bio3 += #flp4 kaji_tmp
execute if score #res kaji_tmp matches 3 run scoreboard players operation @s mat_bio5 -= #flk5 kaji_tmp
execute if score #res kaji_tmp matches 3 run scoreboard players operation @s mat_bio4 += #flp5 kaji_tmp
execute if score #res kaji_tmp matches 3 run scoreboard players operation @s mat_bio6 -= #flk6 kaji_tmp
execute if score #res kaji_tmp matches 3 run scoreboard players operation @s mat_bio5 += #flp6 kaji_tmp
scoreboard players operation @s mat_gem2 -= #glk2 kaji_tmp
scoreboard players operation @s mat_gem1 += #glp2 kaji_tmp
scoreboard players operation @s mat_gem3 -= #glk3 kaji_tmp
scoreboard players operation @s mat_gem2 += #glp3 kaji_tmp
scoreboard players operation @s mat_gem4 -= #glk4 kaji_tmp
scoreboard players operation @s mat_gem3 += #glp4 kaji_tmp
scoreboard players operation @s mat_gem5 -= #glk5 kaji_tmp
scoreboard players operation @s mat_gem4 += #glp5 kaji_tmp
scoreboard players operation @s mat_gem6 -= #glk6 kaji_tmp
scoreboard players operation @s mat_gem5 += #glp6 kaji_tmp
