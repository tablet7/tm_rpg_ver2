#> tm_workbench:gen/chest/s802/check

# 画面 802（機能 8）: 画面の物の数が変わったとき（gui/chest/watch → gen/chest/check から）。押されたボタンを #act gui_tmp に入れ、入った物を返し、空いた枠を置き直す
# gen_gui.py が作る（手で直さない。md/gui_md/screens.json・items.json・materials.json を直して作り直す）
# @s ＝ トロッコ（いる場所 ＝ 持ち主の足元）

# ボタンの枠が空なら押された（最初の1つだけ）。プレイヤーの物が入っているだけなら押されたことにしない
execute if score #act gui_tmp matches 0 unless items entity @s container.18 * run scoreboard players set #act gui_tmp 800003
function tm_workbench:gen/chest/s802/return_other
# 置く場所に入った岩盤を消す（手に持った岩盤を、tm_rpg:main に消される前に置いたとき）
execute if items entity @s container.10 minecraft:bedrock run item replace entity @s container.10 with minecraft:air
execute if items entity @s container.14 minecraft:bedrock run item replace entity @s container.14 with minecraft:air
function tm_workbench:gen/chest/s802/fill
