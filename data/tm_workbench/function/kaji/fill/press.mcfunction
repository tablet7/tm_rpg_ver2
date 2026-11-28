#> tm_workbench:kaji/fill/press

# 強化の画面（102）の「足りない分を変換」ボタン（100018）。自分のトロッコを探して kaji/fill/do を動かす（gen/act_run から）
# @s ＝ 押したプレイヤー

scoreboard players operation #me gui_tmp = @s ent_id
tag @s add kaji_user
execute as @e[type=chest_minecart,tag=gui_cart,distance=..8] if score @s gui_owner = #me gui_tmp run tag @s add kaji_cart
execute as @e[type=chest_minecart,tag=kaji_cart,distance=..8,limit=1] at @s run function tm_workbench:kaji/fill/do
tag @e[type=chest_minecart,tag=kaji_cart,distance=..8] remove kaji_cart
tag @s remove kaji_user
