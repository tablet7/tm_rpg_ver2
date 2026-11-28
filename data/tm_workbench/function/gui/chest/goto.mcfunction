#> tm_workbench:gui/chest/goto

# 自分のトロッコの画面を #screen gui_tmp に移す。gen/goto/s<画面>（画面を移るボタン）から呼ばれる
# @s ＝ プレイヤー（at @s）

scoreboard players operation #me gui_tmp = @s ent_id
execute as @e[type=chest_minecart,tag=gui_cart,distance=..8] if score @s gui_owner = #me gui_tmp run function tm_workbench:gen/chest/enter
