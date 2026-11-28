#> tm_workbench:gen/kaji/conv_show

# 素材の変換の画面（105）の素材の枠（12〜17 番）と系統の切り替え（21 番〜）を置き直す（kaji/refresh/conv から）
# gen_gui.py が作る（手で直さない。md/gui_md/screens.json・items.json・materials.json を直して作り直す）
# @s ＝ トロッコ。#cvfam・#cvh<段階>・#cvq<段階>・#cvp<段階>・#cvok<段階>・#cvconf kaji_tmp
# 画面の物（岩盤）の数は変えない

# 段階 1（白）: 12 番
execute if score #cvfam kaji_tmp matches 1 run item replace entity @s container.12 with minecraft:bedrock[minecraft:custom_data={gui_slot:12},minecraft:item_model="minecraft:oak_button",minecraft:item_name={text:"木のかけら",color:"white",italic:false}]
execute if score #cvfam kaji_tmp matches 2 run item replace entity @s container.12 with minecraft:bedrock[minecraft:custom_data={gui_slot:12},minecraft:item_model="minecraft:stone_button",minecraft:item_name={text:"石のかけら",color:"white",italic:false}]
execute if score #cvfam kaji_tmp matches 3 run item replace entity @s container.12 with minecraft:bedrock[minecraft:custom_data={gui_slot:12},minecraft:item_model="minecraft:rabbit_hide",minecraft:item_name={text:"皮のかけら",color:"white",italic:false}]
execute if score #cvfam kaji_tmp matches 4 run item replace entity @s container.12 with minecraft:bedrock[minecraft:custom_data={gui_slot:12},minecraft:item_model="minecraft:coal",minecraft:item_name={text:"黒ずんだ石",color:"white",italic:false}]
item modify entity @s container.12 tm_workbench:gen/kaji/conv_g1
# 段階 2（緑）: 13 番
execute if score #cvfam kaji_tmp matches 1 run item replace entity @s container.13 with minecraft:bedrock[minecraft:custom_data={gui_slot:13},minecraft:item_model="minecraft:oak_planks",minecraft:item_name={text:"木材",color:"green",italic:false}]
execute if score #cvfam kaji_tmp matches 2 run item replace entity @s container.13 with minecraft:bedrock[minecraft:custom_data={gui_slot:13},minecraft:item_model="minecraft:cobblestone",minecraft:item_name={text:"石材",color:"green",italic:false}]
execute if score #cvfam kaji_tmp matches 3 run item replace entity @s container.13 with minecraft:bedrock[minecraft:custom_data={gui_slot:13},minecraft:item_model="minecraft:leather",minecraft:item_name={text:"皮",color:"green",italic:false}]
execute if score #cvfam kaji_tmp matches 4 run item replace entity @s container.13 with minecraft:bedrock[minecraft:custom_data={gui_slot:13},minecraft:item_model="minecraft:copper_ingot",minecraft:item_name={text:"銅インゴット",color:"green",italic:false}]
item modify entity @s container.13 tm_workbench:gen/kaji/conv_g2
# 段階 3（青）: 14 番
execute if score #cvfam kaji_tmp matches 1 run item replace entity @s container.14 with minecraft:bedrock[minecraft:custom_data={gui_slot:14},minecraft:item_model="minecraft:stripped_oak_log",minecraft:item_name={text:"まとまった木",color:"aqua",italic:false}]
execute if score #cvfam kaji_tmp matches 2 run item replace entity @s container.14 with minecraft:bedrock[minecraft:custom_data={gui_slot:14},minecraft:item_model="minecraft:smooth_stone",minecraft:item_name={text:"磨かれた石",color:"aqua",italic:false}]
execute if score #cvfam kaji_tmp matches 3 run item replace entity @s container.14 with minecraft:bedrock[minecraft:custom_data={gui_slot:14},minecraft:item_model="minecraft:rotten_flesh",minecraft:item_name={text:"肉",color:"aqua",italic:false}]
execute if score #cvfam kaji_tmp matches 4 run item replace entity @s container.14 with minecraft:bedrock[minecraft:custom_data={gui_slot:14},minecraft:item_model="minecraft:iron_ingot",minecraft:item_name={text:"鉄インゴット",color:"aqua",italic:false}]
item modify entity @s container.14 tm_workbench:gen/kaji/conv_g3
# 段階 4（紫）: 15 番
execute if score #cvfam kaji_tmp matches 1 run item replace entity @s container.15 with minecraft:bedrock[minecraft:custom_data={gui_slot:15},minecraft:item_model="minecraft:oak_log",minecraft:item_name={text:"原木",color:"light_purple",italic:false}]
execute if score #cvfam kaji_tmp matches 2 run item replace entity @s container.15 with minecraft:bedrock[minecraft:custom_data={gui_slot:15},minecraft:item_model="minecraft:chiseled_stone_bricks",minecraft:item_name={text:"加工された石",color:"light_purple",italic:false}]
execute if score #cvfam kaji_tmp matches 3 run item replace entity @s container.15 with minecraft:bedrock[minecraft:custom_data={gui_slot:15},minecraft:item_model="minecraft:bone",minecraft:item_name={text:"骨",color:"light_purple",italic:false}]
execute if score #cvfam kaji_tmp matches 4 run item replace entity @s container.15 with minecraft:bedrock[minecraft:custom_data={gui_slot:15},minecraft:item_model="minecraft:gold_ingot",minecraft:item_name={text:"金インゴット",color:"light_purple",italic:false}]
item modify entity @s container.15 tm_workbench:gen/kaji/conv_g4
# 段階 5（金）: 16 番
execute if score #cvfam kaji_tmp matches 1 run item replace entity @s container.16 with minecraft:bedrock[minecraft:custom_data={gui_slot:16},minecraft:item_model="minecraft:birch_log",minecraft:item_name={text:"古代の木",color:"gold",italic:false}]
execute if score #cvfam kaji_tmp matches 2 run item replace entity @s container.16 with minecraft:bedrock[minecraft:custom_data={gui_slot:16},minecraft:item_model="minecraft:blackstone",minecraft:item_name={text:"古代の石",color:"gold",italic:false}]
execute if score #cvfam kaji_tmp matches 3 run item replace entity @s container.16 with minecraft:bedrock[minecraft:custom_data={gui_slot:16},minecraft:item_model="minecraft:ender_eye",minecraft:item_name={text:"目",color:"gold",italic:false}]
execute if score #cvfam kaji_tmp matches 4 run item replace entity @s container.16 with minecraft:bedrock[minecraft:custom_data={gui_slot:16},minecraft:item_model="minecraft:diamond",minecraft:item_name={text:"ダイヤモンド",color:"gold",italic:false}]
item modify entity @s container.16 tm_workbench:gen/kaji/conv_g5
# 段階 6（赤）: 17 番
execute if score #cvfam kaji_tmp matches 1 run item replace entity @s container.17 with minecraft:bedrock[minecraft:custom_data={gui_slot:17},minecraft:item_model="minecraft:birch_sapling",minecraft:item_name={text:"古代の苗",color:"red",italic:false}]
execute if score #cvfam kaji_tmp matches 2 run item replace entity @s container.17 with minecraft:bedrock[minecraft:custom_data={gui_slot:17},minecraft:item_model="minecraft:chiseled_polished_blackstone",minecraft:item_name={text:"加工された古代の石",color:"red",italic:false}]
execute if score #cvfam kaji_tmp matches 3 run item replace entity @s container.17 with minecraft:bedrock[minecraft:custom_data={gui_slot:17},minecraft:item_model="minecraft:endermite_spawn_egg",minecraft:item_name={text:"ナニカの卵",color:"red",italic:false}]
execute if score #cvfam kaji_tmp matches 4 run item replace entity @s container.17 with minecraft:bedrock[minecraft:custom_data={gui_slot:17},minecraft:item_model="minecraft:nether_star",minecraft:item_name={text:"輝き石",color:"red",italic:false}]
item modify entity @s container.17 tm_workbench:gen/kaji/conv_g6
# 系統の切り替え（選んでいる系統は光らせる）
execute if score #cvfam kaji_tmp matches 1 run item replace entity @s container.21 with minecraft:bedrock[minecraft:custom_data={gui_slot:21},minecraft:item_model="minecraft:oak_planks",minecraft:item_name={text:"木系素材",color:"white",italic:false},minecraft:enchantment_glint_override=true,minecraft:lore=[{text:"選んでいます",color:"green",italic:false}]]
execute unless score #cvfam kaji_tmp matches 1 run item replace entity @s container.21 with minecraft:bedrock[minecraft:custom_data={gui_slot:21},minecraft:item_model="minecraft:oak_planks",minecraft:item_name={text:"木系素材",color:"white",italic:false},minecraft:lore=[{text:"押すとこの系統に切り替える",color:"gray",italic:false}]]
execute if score #cvfam kaji_tmp matches 2 run item replace entity @s container.22 with minecraft:bedrock[minecraft:custom_data={gui_slot:22},minecraft:item_model="minecraft:cobblestone",minecraft:item_name={text:"石系素材",color:"white",italic:false},minecraft:enchantment_glint_override=true,minecraft:lore=[{text:"選んでいます",color:"green",italic:false}]]
execute unless score #cvfam kaji_tmp matches 2 run item replace entity @s container.22 with minecraft:bedrock[minecraft:custom_data={gui_slot:22},minecraft:item_model="minecraft:cobblestone",minecraft:item_name={text:"石系素材",color:"white",italic:false},minecraft:lore=[{text:"押すとこの系統に切り替える",color:"gray",italic:false}]]
execute if score #cvfam kaji_tmp matches 3 run item replace entity @s container.23 with minecraft:bedrock[minecraft:custom_data={gui_slot:23},minecraft:item_model="minecraft:leather",minecraft:item_name={text:"生物系素材",color:"white",italic:false},minecraft:enchantment_glint_override=true,minecraft:lore=[{text:"選んでいます",color:"green",italic:false}]]
execute unless score #cvfam kaji_tmp matches 3 run item replace entity @s container.23 with minecraft:bedrock[minecraft:custom_data={gui_slot:23},minecraft:item_model="minecraft:leather",minecraft:item_name={text:"生物系素材",color:"white",italic:false},minecraft:lore=[{text:"押すとこの系統に切り替える",color:"gray",italic:false}]]
execute if score #cvfam kaji_tmp matches 4 run item replace entity @s container.24 with minecraft:bedrock[minecraft:custom_data={gui_slot:24},minecraft:item_model="minecraft:copper_ingot",minecraft:item_name={text:"宝石系素材",color:"white",italic:false},minecraft:enchantment_glint_override=true,minecraft:lore=[{text:"選んでいます",color:"green",italic:false}]]
execute unless score #cvfam kaji_tmp matches 4 run item replace entity @s container.24 with minecraft:bedrock[minecraft:custom_data={gui_slot:24},minecraft:item_model="minecraft:copper_ingot",minecraft:item_name={text:"宝石系素材",color:"white",italic:false},minecraft:lore=[{text:"押すとこの系統に切り替える",color:"gray",italic:false}]]
