#> tm_workbench:kaji/refresh/bunkai

# 分解（画面 104）の案内（4 番）を置き直す。kaji/refresh_in から
# @s ＝ トロッコ

scoreboard players operation #gain kaji_tmp = #lv kaji_tmp
execute if score #gain kaji_tmp matches ..0 run scoreboard players set #gain kaji_tmp 1
item replace entity @s container.4 with minecraft:bedrock[minecraft:custom_data={gui_slot:4},minecraft:item_model="minecraft:grindstone",minecraft:item_name={text:"分解",color:"white",italic:false}]
item modify entity @s container.4 tm_workbench:kaji/guide_bunkai
