#> tm_workbench:gen/common/count_free

# 持ち物（0〜35 番）の空いている枠の数を #free gui_tmp に入れる。渡す前に呼ぶ（loot give は持ち物がいっぱいだと消えるため）
# gen_gui.py が作る（手で直さない。md/gui_md/screens.json・items.json・materials.json を直して作り直す）
# @s ＝ プレイヤー

scoreboard players set #free gui_tmp 0
execute unless items entity @s container.0 * run scoreboard players add #free gui_tmp 1
execute unless items entity @s container.1 * run scoreboard players add #free gui_tmp 1
execute unless items entity @s container.2 * run scoreboard players add #free gui_tmp 1
execute unless items entity @s container.3 * run scoreboard players add #free gui_tmp 1
execute unless items entity @s container.4 * run scoreboard players add #free gui_tmp 1
execute unless items entity @s container.5 * run scoreboard players add #free gui_tmp 1
execute unless items entity @s container.6 * run scoreboard players add #free gui_tmp 1
execute unless items entity @s container.7 * run scoreboard players add #free gui_tmp 1
execute unless items entity @s container.8 * run scoreboard players add #free gui_tmp 1
execute unless items entity @s container.9 * run scoreboard players add #free gui_tmp 1
execute unless items entity @s container.10 * run scoreboard players add #free gui_tmp 1
execute unless items entity @s container.11 * run scoreboard players add #free gui_tmp 1
execute unless items entity @s container.12 * run scoreboard players add #free gui_tmp 1
execute unless items entity @s container.13 * run scoreboard players add #free gui_tmp 1
execute unless items entity @s container.14 * run scoreboard players add #free gui_tmp 1
execute unless items entity @s container.15 * run scoreboard players add #free gui_tmp 1
execute unless items entity @s container.16 * run scoreboard players add #free gui_tmp 1
execute unless items entity @s container.17 * run scoreboard players add #free gui_tmp 1
execute unless items entity @s container.18 * run scoreboard players add #free gui_tmp 1
execute unless items entity @s container.19 * run scoreboard players add #free gui_tmp 1
execute unless items entity @s container.20 * run scoreboard players add #free gui_tmp 1
execute unless items entity @s container.21 * run scoreboard players add #free gui_tmp 1
execute unless items entity @s container.22 * run scoreboard players add #free gui_tmp 1
execute unless items entity @s container.23 * run scoreboard players add #free gui_tmp 1
execute unless items entity @s container.24 * run scoreboard players add #free gui_tmp 1
execute unless items entity @s container.25 * run scoreboard players add #free gui_tmp 1
execute unless items entity @s container.26 * run scoreboard players add #free gui_tmp 1
execute unless items entity @s container.27 * run scoreboard players add #free gui_tmp 1
execute unless items entity @s container.28 * run scoreboard players add #free gui_tmp 1
execute unless items entity @s container.29 * run scoreboard players add #free gui_tmp 1
execute unless items entity @s container.30 * run scoreboard players add #free gui_tmp 1
execute unless items entity @s container.31 * run scoreboard players add #free gui_tmp 1
execute unless items entity @s container.32 * run scoreboard players add #free gui_tmp 1
execute unless items entity @s container.33 * run scoreboard players add #free gui_tmp 1
execute unless items entity @s container.34 * run scoreboard players add #free gui_tmp 1
execute unless items entity @s container.35 * run scoreboard players add #free gui_tmp 1
