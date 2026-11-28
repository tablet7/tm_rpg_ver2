#> tm_workbench:gen/block/place

# 機能 #place_type gui_tmp のブロック・場所を置く（gui/block/place から）
# gen_gui.py が作る（手で直さない。md/gui_md/screens.json・items.json・materials.json を直して作り直す）

execute if score #place_type gui_tmp matches 1 run return run function tm_workbench:gen/block/place_t1
execute if score #place_type gui_tmp matches 7 run return run function tm_workbench:gen/block/place_t7
execute if score #place_type gui_tmp matches 8 run return run function tm_workbench:gen/block/place_t8
