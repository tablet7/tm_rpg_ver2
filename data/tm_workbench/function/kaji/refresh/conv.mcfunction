#> tm_workbench:kaji/refresh/conv

# 素材の変換（画面 105）の、一度に変える数（8 番）・素材の枠（12〜17 番）・系統の切り替え（21 番〜）を置き直す。kaji/refresh_in から
# @s ＝ トロッコ（持ち主に tag kaji_user）。画面の物（岩盤）の数は変えない

execute unless score @s kaji_cvfam matches 1.. run scoreboard players set @s kaji_cvfam 1
execute unless score @s kaji_cvmode matches 1..5 run scoreboard players set @s kaji_cvmode 1
scoreboard players operation #cvfam kaji_tmp = @s kaji_cvfam
scoreboard players operation #cvmode kaji_tmp = @s kaji_cvmode
scoreboard players set #cvconf kaji_tmp 0
execute if score @s kaji_cvconf matches 1.. run scoreboard players operation #cvconf kaji_tmp = @s kaji_cvconf
execute as @a[tag=kaji_user,limit=1] run function tm_workbench:gen/kaji/conv_have
function tm_workbench:gen/kaji/conv_calc

# 8 番: 一度に変える数
execute if score #cvmode kaji_tmp matches 1 run item replace entity @s container.8 with minecraft:bedrock[minecraft:custom_data={gui_slot:8},minecraft:item_model="minecraft:comparator",minecraft:item_name={text:"一度に変える数: ×1",color:"white",italic:false}]
execute if score #cvmode kaji_tmp matches 2 run item replace entity @s container.8 with minecraft:bedrock[minecraft:custom_data={gui_slot:8},minecraft:item_model="minecraft:comparator",minecraft:item_name={text:"一度に変える数: ×10",color:"white",italic:false}]
execute if score #cvmode kaji_tmp matches 3 run item replace entity @s container.8 with minecraft:bedrock[minecraft:custom_data={gui_slot:8},minecraft:item_model="minecraft:comparator",minecraft:item_name={text:"一度に変える数: ×100",color:"white",italic:false}]
execute if score #cvmode kaji_tmp matches 4 run item replace entity @s container.8 with minecraft:bedrock[minecraft:custom_data={gui_slot:8},minecraft:item_model="minecraft:comparator",minecraft:item_name={text:"一度に変える数: ×1000",color:"white",italic:false}]
execute if score #cvmode kaji_tmp matches 5 run item replace entity @s container.8 with minecraft:bedrock[minecraft:custom_data={gui_slot:8},minecraft:item_model="minecraft:comparator",minecraft:item_name={text:"一度に変える数: 全部",color:"gold",italic:false},minecraft:enchantment_glint_override=true]
item modify entity @s container.8 tm_workbench:kaji/conv_qty

function tm_workbench:gen/kaji/conv_show
