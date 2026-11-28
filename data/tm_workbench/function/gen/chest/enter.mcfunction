#> tm_workbench:gen/chest/enter

# コンテナ型の画面 #screen gui_tmp に入る（gui/chest/init・gui/chest/goto から）
# gen_gui.py が作る（手で直さない。md/gui_md/screens.json・items.json・materials.json を直して作り直す）
# @s ＝ トロッコ

execute if score #screen gui_tmp matches 101 run return run function tm_workbench:gen/chest/s101/enter
execute if score #screen gui_tmp matches 102 run return run function tm_workbench:gen/chest/s102/enter
execute if score #screen gui_tmp matches 103 run return run function tm_workbench:gen/chest/s103/enter
execute if score #screen gui_tmp matches 104 run return run function tm_workbench:gen/chest/s104/enter
execute if score #screen gui_tmp matches 105 run return run function tm_workbench:gen/chest/s105/enter
execute if score #screen gui_tmp matches 801 run return run function tm_workbench:gen/chest/s801/enter
execute if score #screen gui_tmp matches 802 run return run function tm_workbench:gen/chest/s802/enter
