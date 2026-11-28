#> tm_workbench:gen/kaji/have

# 強化に使う素材の、持っている数を #h<段階>・#gh<段階> kaji_tmp に入れる（kaji/kyouka/calc_have から）
# gen_gui.py が作る（手で直さない。md/gui_md/screens.json・items.json・materials.json を直して作り直す）
# @s ＝ プレイヤー。#res kaji_tmp ＝ 装備の upgrade_res（1〜3）

execute if score #res kaji_tmp matches 1 run scoreboard players operation #h1 kaji_tmp = @s mat_wood1
execute if score #res kaji_tmp matches 1 run scoreboard players operation #h2 kaji_tmp = @s mat_wood2
execute if score #res kaji_tmp matches 1 run scoreboard players operation #h3 kaji_tmp = @s mat_wood3
execute if score #res kaji_tmp matches 1 run scoreboard players operation #h4 kaji_tmp = @s mat_wood4
execute if score #res kaji_tmp matches 1 run scoreboard players operation #h5 kaji_tmp = @s mat_wood5
execute if score #res kaji_tmp matches 1 run scoreboard players operation #h6 kaji_tmp = @s mat_wood6
execute if score #res kaji_tmp matches 2 run scoreboard players operation #h1 kaji_tmp = @s mat_stone1
execute if score #res kaji_tmp matches 2 run scoreboard players operation #h2 kaji_tmp = @s mat_stone2
execute if score #res kaji_tmp matches 2 run scoreboard players operation #h3 kaji_tmp = @s mat_stone3
execute if score #res kaji_tmp matches 2 run scoreboard players operation #h4 kaji_tmp = @s mat_stone4
execute if score #res kaji_tmp matches 2 run scoreboard players operation #h5 kaji_tmp = @s mat_stone5
execute if score #res kaji_tmp matches 2 run scoreboard players operation #h6 kaji_tmp = @s mat_stone6
execute if score #res kaji_tmp matches 3 run scoreboard players operation #h1 kaji_tmp = @s mat_bio1
execute if score #res kaji_tmp matches 3 run scoreboard players operation #h2 kaji_tmp = @s mat_bio2
execute if score #res kaji_tmp matches 3 run scoreboard players operation #h3 kaji_tmp = @s mat_bio3
execute if score #res kaji_tmp matches 3 run scoreboard players operation #h4 kaji_tmp = @s mat_bio4
execute if score #res kaji_tmp matches 3 run scoreboard players operation #h5 kaji_tmp = @s mat_bio5
execute if score #res kaji_tmp matches 3 run scoreboard players operation #h6 kaji_tmp = @s mat_bio6
scoreboard players operation #gh1 kaji_tmp = @s mat_gem1
scoreboard players operation #gh2 kaji_tmp = @s mat_gem2
scoreboard players operation #gh3 kaji_tmp = @s mat_gem3
scoreboard players operation #gh4 kaji_tmp = @s mat_gem4
scoreboard players operation #gh5 kaji_tmp = @s mat_gem5
scoreboard players operation #gh6 kaji_tmp = @s mat_gem6
