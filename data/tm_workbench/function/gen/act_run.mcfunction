#> tm_workbench:gen/act_run

# ボタンの番号 #act gui_tmp で振り分ける（gui/act・gui/chest/watch から）
# gen_gui.py が作る（手で直さない。md/gui_md/screens.json・items.json・materials.json を直して作り直す）
# @s ＝ 押したプレイヤー

execute if score #act gui_tmp matches 100001 run return run function tm_workbench:gen/goto/s102
execute if score #act gui_tmp matches 100002 run return run function tm_workbench:gen/goto/s104
execute if score #act gui_tmp matches 100003 run return run function tm_workbench:gen/goto/s101
execute if score #act gui_tmp matches 100004 run return run function tm_workbench:kaji/kyouka/press
execute if score #act gui_tmp matches 100005 run return run function tm_workbench:gen/goto/s101
execute if score #act gui_tmp matches 100006 run return run function tm_workbench:kaji/bunkai/press
execute if score #act gui_tmp matches 100007 run return run function tm_workbench:gen/goto/s103
execute if score #act gui_tmp matches 100008 run return run function tm_workbench:gen/goto/s101
execute if score #act gui_tmp matches 100009 run return run function tm_workbench:kaji/kaizou/press
execute if score #act gui_tmp matches 100010 run return run function tm_workbench:kaji/conv/open
execute if score #act gui_tmp matches 100011 run return run function tm_workbench:gen/goto/s101
execute if score #act gui_tmp matches 100012 run return run function tm_workbench:kaji/conv/press
execute if score #act gui_tmp matches 100013 run return run function tm_workbench:kaji/conv/press
execute if score #act gui_tmp matches 100014 run return run function tm_workbench:kaji/conv/press
execute if score #act gui_tmp matches 100015 run return run function tm_workbench:kaji/conv/press
execute if score #act gui_tmp matches 100016 run return run function tm_workbench:kaji/conv/press
execute if score #act gui_tmp matches 100017 run return run function tm_workbench:kaji/conv/press
execute if score #act gui_tmp matches 100018 run return run function tm_workbench:kaji/fill/press
execute if score #act gui_tmp matches 100021 run return run function tm_workbench:kaji/conv/press
execute if score #act gui_tmp matches 100022 run return run function tm_workbench:kaji/conv/press
execute if score #act gui_tmp matches 100023 run return run function tm_workbench:kaji/conv/press
execute if score #act gui_tmp matches 100024 run return run function tm_workbench:kaji/conv/press
execute if score #act gui_tmp matches 700001 run return run function tm_workbench:test/hello
execute if score #act gui_tmp matches 700002 run return run function tm_workbench:test/dialog_gold
execute if score #act gui_tmp matches 800001 run return run function tm_workbench:test/hello
execute if score #act gui_tmp matches 800002 run return run function tm_workbench:gen/goto/s802
execute if score #act gui_tmp matches 800003 run return run function tm_workbench:gen/goto/s801
