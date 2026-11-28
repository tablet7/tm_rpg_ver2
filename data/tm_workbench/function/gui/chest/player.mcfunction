#> tm_workbench:gui/chest/player

# 鍛冶台・醸造台など（display、tag gui_block）を見ているか。見ていれば自分のトロッコを目の位置に出し、見ていなければ片付ける。gui/tick から呼ばれる
# 見ているか ＝ 目から 1・2・3 ブロック先の点のどれかが、ブロックの中心（display の位置）から 0.8 以内。見ている display の gui_type を #type gui_tmp に入れる
# @s ＝ プレイヤー（at @s）

# 番号（ent_id。tm_rpg の player/first_reload が付ける）が無い人はトロッコを持てない
execute unless score @s ent_id matches -2147483648.. run return 0
execute unless entity @e[type=item_display,tag=gui_block,distance=..4,limit=1] run return run function tm_workbench:gui/chest/hide

scoreboard players set #type gui_tmp 0
execute anchored eyes positioned ^ ^ ^1 as @e[type=item_display,tag=gui_block,distance=..0.8,limit=1] run scoreboard players operation #type gui_tmp = @s gui_type
execute if score #type gui_tmp matches 0 anchored eyes positioned ^ ^ ^2 as @e[type=item_display,tag=gui_block,distance=..0.8,limit=1] run scoreboard players operation #type gui_tmp = @s gui_type
execute if score #type gui_tmp matches 0 anchored eyes positioned ^ ^ ^3 as @e[type=item_display,tag=gui_block,distance=..0.8,limit=1] run scoreboard players operation #type gui_tmp = @s gui_type
execute if score #type gui_tmp matches 0 run return run function tm_workbench:gui/chest/hide

function tm_workbench:gui/chest/show
