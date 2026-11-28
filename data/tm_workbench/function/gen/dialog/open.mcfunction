#> tm_workbench:gen/dialog/open

# dialog の機能（gui_type）の最初の画面を出す（gui/dialog/open から）
# gen_gui.py が作る（手で直さない。md/gui_md/screens.json・items.json・materials.json を直して作り直す）
# @s ＝ プレイヤー

execute if score @s gui_type matches 7 run return run function tm_workbench:test/dialog_open
