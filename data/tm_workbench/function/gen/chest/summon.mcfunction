#> tm_workbench:gen/chest/summon

# 機能 #type gui_tmp のトロッコを目の位置に出す（gui/chest/summon から）
# gen_gui.py が作る（手で直さない。md/gui_md/screens.json・items.json・materials.json を直して作り直す）
# @s ＝ プレイヤー

execute if score #type gui_tmp matches 1 anchored eyes positioned ^ ^ ^ run return run summon minecraft:chest_minecart ~ ~-0.35 ~ {Tags:["gui_cart","gui_mine","gui_new"],NoGravity:1b,Invulnerable:1b,Silent:1b,CustomName:"鍛冶台",DisplayState:"minecraft:structure_void"}
execute if score #type gui_tmp matches 8 anchored eyes positioned ^ ^ ^ run return run summon minecraft:chest_minecart ~ ~-0.35 ~ {Tags:["gui_cart","gui_mine","gui_new"],NoGravity:1b,Invulnerable:1b,Silent:1b,CustomName:"確認用の台",DisplayState:"minecraft:structure_void"}
