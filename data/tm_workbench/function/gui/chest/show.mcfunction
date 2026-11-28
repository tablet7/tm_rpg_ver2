#> tm_workbench:gui/chest/show

# 自分のトロッコ（tag gui_cart、gui_owner ＝ 自分の ent_id）を目の位置に tp する。無ければ出す。gui/chest/player から呼ばれる
# トロッコの当たり判定は高さ 0.7 で足元が原点なので、目の位置から 0.35 下げると、目が箱の真ん中に入る（目が当たり判定の中にあると、右クリックは必ずそのトロッコに当たる）
# 別の機能のブロックを見たら、前のトロッコを片付けて（中の物は返す）出し直す
# @s ＝ プレイヤー、#type gui_tmp ＝ 見ているブロックの機能の番号

scoreboard players operation #me gui_tmp = @s ent_id
execute as @e[type=chest_minecart,tag=gui_cart,distance=..8] if score @s gui_owner = #me gui_tmp run tag @s add gui_mine
execute as @e[type=chest_minecart,tag=gui_mine,distance=..8] unless score @s gui_type = #type gui_tmp run tag @s add gui_old
execute if entity @e[type=chest_minecart,tag=gui_old,distance=..8,limit=1] run tag @s remove gui_cart_open
execute as @e[type=chest_minecart,tag=gui_old,distance=..8] run function tm_workbench:gui/chest/close
execute unless entity @e[type=chest_minecart,tag=gui_mine,distance=..8,limit=1] run function tm_workbench:gui/chest/summon
execute anchored eyes positioned ^ ^ ^ run tp @e[type=chest_minecart,tag=gui_mine,distance=..8,limit=1] ~ ~-0.35 ~
execute store result score @e[type=chest_minecart,tag=gui_mine,distance=..8,limit=1] gui_cart_time run time query gametime
tag @e[type=chest_minecart,tag=gui_mine,distance=..8] remove gui_mine
tag @s add gui_has_cart
