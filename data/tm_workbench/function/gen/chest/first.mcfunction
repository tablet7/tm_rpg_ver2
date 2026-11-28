#> tm_workbench:gen/chest/first

# 機能 #type gui_tmp の最初の画面を #screen gui_tmp に入れる（gui/chest/init から）
# gen_gui.py が作る（手で直さない。md/gui_md/screens.json・items.json・materials.json を直して作り直す）

execute if score #type gui_tmp matches 1 run scoreboard players set #screen gui_tmp 101
execute if score #type gui_tmp matches 8 run scoreboard players set #screen gui_tmp 801
