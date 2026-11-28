#> tm_workbench:test/remove_proto

# 消した試作（proto/）がワールドに残した物を片付ける。手で /function tm_workbench:test/remove_proto を1回打つ（2026-11-26 に試作のファイルを消したため、proto/uninstall の代わり）
# 試作のトロッコ（tag wbp_cart）は中身ごと消す（試作のトロッコは見ているあいだしか出ないので、ふつうは残っていない）。作業台など手で置いたブロックは手で壊す

# トロッコ: 中身を消してから下へ送って消す（kill だと中身とトロッコが落ちるため）
execute as @e[type=chest_minecart,tag=wbp_cart] run data modify entity @s Items set value []
execute as @e[type=chest_minecart,tag=wbp_cart] at @s run tp @s ~ -1000 ~
# 鍛冶台: バリアと見た目の item_display・前の版の marker・dialog の interaction
execute as @e[type=item_display,tag=wbp_block] at @s if block ~ ~ ~ minecraft:barrier run setblock ~ ~ ~ minecraft:air
kill @e[type=item_display,tag=wbp_block]
kill @e[type=marker,tag=wbp_block]
kill @e[type=interaction,tag=wbp_dialog]
# タグ・スコア・storage
tag @a remove wbp
tag @a remove wbp_has_cart
tag @a remove wbp_open
scoreboard objectives remove wbp_owner
scoreboard objectives remove wbp_u0
scoreboard objectives remove wbp_u1
scoreboard objectives remove wbp_u2
scoreboard objectives remove wbp_u3
scoreboard objectives remove wbp_tmp
scoreboard objectives remove wbp_act
scoreboard objectives remove wbp_use_last
scoreboard objectives remove wbp_pot
data remove storage tm_workbench:proto dialog
data remove storage tm_workbench:proto uuid
tellraw @s {"text":"[確認] 試作の残り（トロッコ・鍛冶台・interaction・スコア・タグ）を片付けました。作業台など手で置いたブロックは手で壊してください","color":"aqua"}
