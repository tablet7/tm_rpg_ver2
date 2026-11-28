#> tm_workbench:gui/block/remove

# 今いる場所のブロックの、鍛冶台などのバリアと display、dialog の interaction を消す（dialog のブロックは残る）
# 使い方: execute positioned <場所> run function tm_workbench:gui/block/remove

execute align xyz positioned ~0.5 ~0.5 ~0.5 if entity @e[type=item_display,tag=gui_block,distance=..0.5,limit=1] if block ~ ~ ~ minecraft:barrier run setblock ~ ~ ~ minecraft:air
execute align xyz positioned ~0.5 ~0.5 ~0.5 run kill @e[type=item_display,tag=gui_block,distance=..0.5]
execute align xyz positioned ~0.5 ~ ~0.5 run kill @e[type=interaction,tag=gui,distance=..0.5]
