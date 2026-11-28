#> tm_workbench:gui/chest/hide

# 鍛冶台などを見なくなった・離れたら、自分のトロッコを片付ける。gui/chest/player から呼ばれる（トロッコを出していない人はすぐ終わる）
# 中のプレイヤーの物を全部、自分の足元に返してから消す（gui/chest/close。as はいる場所を変えないので、プレイヤーの足元に出る）
# @s ＝ プレイヤー（at @s）

execute unless entity @s[tag=gui_has_cart] run return 0
tag @s remove gui_has_cart
tag @s remove gui_cart_open
scoreboard players operation #me gui_tmp = @s ent_id
execute as @e[type=chest_minecart,tag=gui_cart,distance=..8] if score @s gui_owner = #me gui_tmp run function tm_workbench:gui/chest/close
