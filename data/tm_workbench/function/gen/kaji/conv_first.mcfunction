#> tm_workbench:gen/kaji/conv_first

# 素材の変換の画面に入るときに選ぶ系統（kaji_cvfam）を決める。10 番の物の upgrade_res の系統、置いていなければ木系素材（kaji/conv/open から）
# gen_gui.py が作る（手で直さない。md/gui_md/screens.json・items.json・materials.json を直して作り直す）
# @s ＝ トロッコ

scoreboard players set @s kaji_cvfam 1
execute unless score @s kaji_has matches 1 run return 0
execute unless score @s kaji_kind matches 1..3 run return 0
execute if score @s kaji_res matches 1 run scoreboard players set @s kaji_cvfam 1
execute if score @s kaji_res matches 2 run scoreboard players set @s kaji_cvfam 2
execute if score @s kaji_res matches 3 run scoreboard players set @s kaji_cvfam 3
