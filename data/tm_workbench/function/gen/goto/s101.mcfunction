#> tm_workbench:gen/goto/s101

# 画面 101 へ移るボタン（gen/act_run から）
# gen_gui.py が作る（手で直さない。md/gui_md/screens.json・items.json・materials.json を直して作り直す）
# @s ＝ プレイヤー

scoreboard players set #screen gui_tmp 101
function tm_workbench:gui/chest/goto
