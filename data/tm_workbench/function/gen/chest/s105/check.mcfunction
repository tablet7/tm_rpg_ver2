#> tm_workbench:gen/chest/s105/check

# 画面 105（機能 1）: 画面の物の数が変わったとき（gui/chest/watch → gen/chest/check から）。押されたボタンを #act gui_tmp に入れ、入った物を返し、空いた枠を置き直す
# gen_gui.py が作る（手で直さない。md/gui_md/screens.json・items.json・materials.json を直して作り直す）
# @s ＝ トロッコ（いる場所 ＝ 持ち主の足元）

# ボタンの枠が空なら押された（最初の1つだけ）。プレイヤーの物が入っているだけなら押されたことにしない
execute if score #act gui_tmp matches 0 unless items entity @s container.8 * run scoreboard players set #act gui_tmp 100012
execute if score #act gui_tmp matches 0 unless items entity @s container.13 * run scoreboard players set #act gui_tmp 100013
execute if score #act gui_tmp matches 0 unless items entity @s container.14 * run scoreboard players set #act gui_tmp 100014
execute if score #act gui_tmp matches 0 unless items entity @s container.15 * run scoreboard players set #act gui_tmp 100015
execute if score #act gui_tmp matches 0 unless items entity @s container.16 * run scoreboard players set #act gui_tmp 100016
execute if score #act gui_tmp matches 0 unless items entity @s container.17 * run scoreboard players set #act gui_tmp 100017
execute if score #act gui_tmp matches 0 unless items entity @s container.18 * run scoreboard players set #act gui_tmp 100011
execute if score #act gui_tmp matches 0 unless items entity @s container.21 * run scoreboard players set #act gui_tmp 100021
execute if score #act gui_tmp matches 0 unless items entity @s container.22 * run scoreboard players set #act gui_tmp 100022
execute if score #act gui_tmp matches 0 unless items entity @s container.23 * run scoreboard players set #act gui_tmp 100023
execute if score #act gui_tmp matches 0 unless items entity @s container.24 * run scoreboard players set #act gui_tmp 100024
function tm_workbench:gen/chest/s105/return_other
# 置く場所に入った岩盤を消す（手に持った岩盤を、tm_rpg:main に消される前に置いたとき）
execute if items entity @s container.10 minecraft:bedrock run item replace entity @s container.10 with minecraft:air
function tm_workbench:gen/chest/s105/fill
# 表示の枠を今の状態で置き直す（fill が埋め草に戻した枠も。screens.json の refresh）
function tm_workbench:kaji/refresh
