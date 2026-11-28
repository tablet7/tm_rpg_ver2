#> tm_workbench:gen/chest/check

# トロッコの今の画面（gui_screen）の見回り（gui/chest/watch から）
# gen_gui.py が作る（手で直さない。md/gui_md/screens.json・items.json・materials.json を直して作り直す）
# @s ＝ トロッコ

execute if score @s gui_screen matches 101 run return run function tm_workbench:gen/chest/s101/check
execute if score @s gui_screen matches 102 run return run function tm_workbench:gen/chest/s102/check
execute if score @s gui_screen matches 103 run return run function tm_workbench:gen/chest/s103/check
execute if score @s gui_screen matches 104 run return run function tm_workbench:gen/chest/s104/check
execute if score @s gui_screen matches 105 run return run function tm_workbench:gen/chest/s105/check
execute if score @s gui_screen matches 801 run return run function tm_workbench:gen/chest/s801/check
execute if score @s gui_screen matches 802 run return run function tm_workbench:gen/chest/s802/check
