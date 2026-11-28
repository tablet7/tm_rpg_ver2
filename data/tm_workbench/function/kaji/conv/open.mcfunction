#> tm_workbench:kaji/conv/open

# メニューの「素材の変換」ボタン（100010）。自分のトロッコの変換の設定を初めに戻してから、画面 105 へ移る（gen/act_run から）
# 選ぶ系統 ＝ 10 番の物の upgrade_res の系統（置いていなければ最初の系統）、一度に変える数 ＝ ×1、確認待ち ＝ なし
# @s ＝ 押したプレイヤー（at @s）

scoreboard players operation #me gui_tmp = @s ent_id
execute as @e[type=chest_minecart,tag=gui_cart,distance=..8] if score @s gui_owner = #me gui_tmp run tag @s add kaji_cart
execute as @e[type=chest_minecart,tag=kaji_cart,distance=..8,limit=1] run function tm_workbench:gen/kaji/conv_first
scoreboard players set @e[type=chest_minecart,tag=kaji_cart,distance=..8,limit=1] kaji_cvmode 1
scoreboard players set @e[type=chest_minecart,tag=kaji_cart,distance=..8,limit=1] kaji_cvconf 0
tag @e[type=chest_minecart,tag=kaji_cart,distance=..8] remove kaji_cart
scoreboard players set #screen gui_tmp 105
function tm_workbench:gui/chest/goto
