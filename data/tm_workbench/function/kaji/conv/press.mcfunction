#> tm_workbench:kaji/conv/press

# 素材の変換の画面（105）のボタン（100012 一度に変える数・100013〜100017 段階 2〜6・100021〜100026 系統）。自分のトロッコを探して kaji/conv/do を動かす（gen/act_run から）
# 押したボタンの番号は #act gui_tmp に入ったまま（gui/chest/watch）
# @s ＝ 押したプレイヤー

scoreboard players operation #me gui_tmp = @s ent_id
tag @s add kaji_user
execute as @e[type=chest_minecart,tag=gui_cart,distance=..8] if score @s gui_owner = #me gui_tmp run tag @s add kaji_cart
execute as @e[type=chest_minecart,tag=kaji_cart,distance=..8,limit=1] at @s run function tm_workbench:kaji/conv/do
tag @e[type=chest_minecart,tag=kaji_cart,distance=..8] remove kaji_cart
tag @s remove kaji_user
