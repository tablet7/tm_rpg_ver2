#> tm_workbench:gen/chest/tick

# 開いているトロッコの毎 tick の処理（screens.json の tick がある画面だけ。gui/chest/watch から）
# gen_gui.py が作る（手で直さない。md/gui_md/screens.json・items.json・materials.json を直して作り直す）
# @s ＝ トロッコ（いる場所 ＝ 持ち主の足元）

execute if score @s gui_screen matches 101 run return run function tm_workbench:kaji/tick
execute if score @s gui_screen matches 102 run return run function tm_workbench:kaji/tick
execute if score @s gui_screen matches 103 run return run function tm_workbench:kaji/tick
execute if score @s gui_screen matches 104 run return run function tm_workbench:kaji/tick
execute if score @s gui_screen matches 105 run return run function tm_workbench:kaji/tick
