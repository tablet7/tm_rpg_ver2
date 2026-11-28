#> tm_workbench:gen/kaji/mat_show

# 強化の画面（102）の素材の枠を置き直す（kaji/refresh/kyouka から）
# gen_gui.py が作る（手で直さない。md/gui_md/screens.json・items.json・materials.json を直して作り直す）
# @s ＝ トロッコ。#res・#n<段階>・#gn<段階>（要る数）・#h・#gh（持っている数）kaji_tmp
# 画面の物（岩盤）の数は変えない（埋め草も岩盤）

# 段階 1（白）: 系統 12 番
execute unless score #n1 kaji_tmp matches 1.. run item replace entity @s container.12 with minecraft:bedrock[minecraft:custom_data={gui_slot:12},minecraft:item_model="minecraft:gray_stained_glass_pane",minecraft:tooltip_display={hide_tooltip:true}]
execute if score #n1 kaji_tmp matches 1.. if score #res kaji_tmp matches 1 run item replace entity @s container.12 with minecraft:bedrock[minecraft:custom_data={gui_slot:12},minecraft:item_model="minecraft:oak_button",minecraft:item_name={text:"木のかけら",color:"white",italic:false}]
execute if score #n1 kaji_tmp matches 1.. if score #res kaji_tmp matches 2 run item replace entity @s container.12 with minecraft:bedrock[minecraft:custom_data={gui_slot:12},minecraft:item_model="minecraft:stone_button",minecraft:item_name={text:"石のかけら",color:"white",italic:false}]
execute if score #n1 kaji_tmp matches 1.. if score #res kaji_tmp matches 3 run item replace entity @s container.12 with minecraft:bedrock[minecraft:custom_data={gui_slot:12},minecraft:item_model="minecraft:rabbit_hide",minecraft:item_name={text:"皮のかけら",color:"white",italic:false}]
execute if score #n1 kaji_tmp matches 1.. run item modify entity @s container.12 tm_workbench:gen/kaji/need_n1
execute unless score #gn1 kaji_tmp matches 1.. run item replace entity @s container.21 with minecraft:bedrock[minecraft:custom_data={gui_slot:21},minecraft:item_model="minecraft:gray_stained_glass_pane",minecraft:tooltip_display={hide_tooltip:true}]
execute if score #gn1 kaji_tmp matches 1.. run item replace entity @s container.21 with minecraft:bedrock[minecraft:custom_data={gui_slot:21},minecraft:item_model="minecraft:coal",minecraft:item_name={text:"黒ずんだ石",color:"white",italic:false}]
execute if score #gn1 kaji_tmp matches 1.. run item modify entity @s container.21 tm_workbench:gen/kaji/need_gn1
# 段階 2（緑）: 系統 13 番
execute unless score #n2 kaji_tmp matches 1.. run item replace entity @s container.13 with minecraft:bedrock[minecraft:custom_data={gui_slot:13},minecraft:item_model="minecraft:gray_stained_glass_pane",minecraft:tooltip_display={hide_tooltip:true}]
execute if score #n2 kaji_tmp matches 1.. if score #res kaji_tmp matches 1 run item replace entity @s container.13 with minecraft:bedrock[minecraft:custom_data={gui_slot:13},minecraft:item_model="minecraft:oak_planks",minecraft:item_name={text:"木材",color:"green",italic:false}]
execute if score #n2 kaji_tmp matches 1.. if score #res kaji_tmp matches 2 run item replace entity @s container.13 with minecraft:bedrock[minecraft:custom_data={gui_slot:13},minecraft:item_model="minecraft:cobblestone",minecraft:item_name={text:"石材",color:"green",italic:false}]
execute if score #n2 kaji_tmp matches 1.. if score #res kaji_tmp matches 3 run item replace entity @s container.13 with minecraft:bedrock[minecraft:custom_data={gui_slot:13},minecraft:item_model="minecraft:leather",minecraft:item_name={text:"皮",color:"green",italic:false}]
execute if score #n2 kaji_tmp matches 1.. run item modify entity @s container.13 tm_workbench:gen/kaji/need_n2
execute unless score #gn2 kaji_tmp matches 1.. run item replace entity @s container.22 with minecraft:bedrock[minecraft:custom_data={gui_slot:22},minecraft:item_model="minecraft:gray_stained_glass_pane",minecraft:tooltip_display={hide_tooltip:true}]
execute if score #gn2 kaji_tmp matches 1.. run item replace entity @s container.22 with minecraft:bedrock[minecraft:custom_data={gui_slot:22},minecraft:item_model="minecraft:copper_ingot",minecraft:item_name={text:"銅インゴット",color:"green",italic:false}]
execute if score #gn2 kaji_tmp matches 1.. run item modify entity @s container.22 tm_workbench:gen/kaji/need_gn2
# 段階 3（青）: 系統 14 番
execute unless score #n3 kaji_tmp matches 1.. run item replace entity @s container.14 with minecraft:bedrock[minecraft:custom_data={gui_slot:14},minecraft:item_model="minecraft:gray_stained_glass_pane",minecraft:tooltip_display={hide_tooltip:true}]
execute if score #n3 kaji_tmp matches 1.. if score #res kaji_tmp matches 1 run item replace entity @s container.14 with minecraft:bedrock[minecraft:custom_data={gui_slot:14},minecraft:item_model="minecraft:stripped_oak_log",minecraft:item_name={text:"まとまった木",color:"aqua",italic:false}]
execute if score #n3 kaji_tmp matches 1.. if score #res kaji_tmp matches 2 run item replace entity @s container.14 with minecraft:bedrock[minecraft:custom_data={gui_slot:14},minecraft:item_model="minecraft:smooth_stone",minecraft:item_name={text:"磨かれた石",color:"aqua",italic:false}]
execute if score #n3 kaji_tmp matches 1.. if score #res kaji_tmp matches 3 run item replace entity @s container.14 with minecraft:bedrock[minecraft:custom_data={gui_slot:14},minecraft:item_model="minecraft:rotten_flesh",minecraft:item_name={text:"肉",color:"aqua",italic:false}]
execute if score #n3 kaji_tmp matches 1.. run item modify entity @s container.14 tm_workbench:gen/kaji/need_n3
execute unless score #gn3 kaji_tmp matches 1.. run item replace entity @s container.23 with minecraft:bedrock[minecraft:custom_data={gui_slot:23},minecraft:item_model="minecraft:gray_stained_glass_pane",minecraft:tooltip_display={hide_tooltip:true}]
execute if score #gn3 kaji_tmp matches 1.. run item replace entity @s container.23 with minecraft:bedrock[minecraft:custom_data={gui_slot:23},minecraft:item_model="minecraft:iron_ingot",minecraft:item_name={text:"鉄インゴット",color:"aqua",italic:false}]
execute if score #gn3 kaji_tmp matches 1.. run item modify entity @s container.23 tm_workbench:gen/kaji/need_gn3
# 段階 4（紫）: 系統 15 番
execute unless score #n4 kaji_tmp matches 1.. run item replace entity @s container.15 with minecraft:bedrock[minecraft:custom_data={gui_slot:15},minecraft:item_model="minecraft:gray_stained_glass_pane",minecraft:tooltip_display={hide_tooltip:true}]
execute if score #n4 kaji_tmp matches 1.. if score #res kaji_tmp matches 1 run item replace entity @s container.15 with minecraft:bedrock[minecraft:custom_data={gui_slot:15},minecraft:item_model="minecraft:oak_log",minecraft:item_name={text:"原木",color:"light_purple",italic:false}]
execute if score #n4 kaji_tmp matches 1.. if score #res kaji_tmp matches 2 run item replace entity @s container.15 with minecraft:bedrock[minecraft:custom_data={gui_slot:15},minecraft:item_model="minecraft:chiseled_stone_bricks",minecraft:item_name={text:"加工された石",color:"light_purple",italic:false}]
execute if score #n4 kaji_tmp matches 1.. if score #res kaji_tmp matches 3 run item replace entity @s container.15 with minecraft:bedrock[minecraft:custom_data={gui_slot:15},minecraft:item_model="minecraft:bone",minecraft:item_name={text:"骨",color:"light_purple",italic:false}]
execute if score #n4 kaji_tmp matches 1.. run item modify entity @s container.15 tm_workbench:gen/kaji/need_n4
execute unless score #gn4 kaji_tmp matches 1.. run item replace entity @s container.24 with minecraft:bedrock[minecraft:custom_data={gui_slot:24},minecraft:item_model="minecraft:gray_stained_glass_pane",minecraft:tooltip_display={hide_tooltip:true}]
execute if score #gn4 kaji_tmp matches 1.. run item replace entity @s container.24 with minecraft:bedrock[minecraft:custom_data={gui_slot:24},minecraft:item_model="minecraft:gold_ingot",minecraft:item_name={text:"金インゴット",color:"light_purple",italic:false}]
execute if score #gn4 kaji_tmp matches 1.. run item modify entity @s container.24 tm_workbench:gen/kaji/need_gn4
# 段階 5（金）: 系統 16 番
execute unless score #n5 kaji_tmp matches 1.. run item replace entity @s container.16 with minecraft:bedrock[minecraft:custom_data={gui_slot:16},minecraft:item_model="minecraft:gray_stained_glass_pane",minecraft:tooltip_display={hide_tooltip:true}]
execute if score #n5 kaji_tmp matches 1.. if score #res kaji_tmp matches 1 run item replace entity @s container.16 with minecraft:bedrock[minecraft:custom_data={gui_slot:16},minecraft:item_model="minecraft:birch_log",minecraft:item_name={text:"古代の木",color:"gold",italic:false}]
execute if score #n5 kaji_tmp matches 1.. if score #res kaji_tmp matches 2 run item replace entity @s container.16 with minecraft:bedrock[minecraft:custom_data={gui_slot:16},minecraft:item_model="minecraft:blackstone",minecraft:item_name={text:"古代の石",color:"gold",italic:false}]
execute if score #n5 kaji_tmp matches 1.. if score #res kaji_tmp matches 3 run item replace entity @s container.16 with minecraft:bedrock[minecraft:custom_data={gui_slot:16},minecraft:item_model="minecraft:ender_eye",minecraft:item_name={text:"目",color:"gold",italic:false}]
execute if score #n5 kaji_tmp matches 1.. run item modify entity @s container.16 tm_workbench:gen/kaji/need_n5
execute unless score #gn5 kaji_tmp matches 1.. run item replace entity @s container.25 with minecraft:bedrock[minecraft:custom_data={gui_slot:25},minecraft:item_model="minecraft:gray_stained_glass_pane",minecraft:tooltip_display={hide_tooltip:true}]
execute if score #gn5 kaji_tmp matches 1.. run item replace entity @s container.25 with minecraft:bedrock[minecraft:custom_data={gui_slot:25},minecraft:item_model="minecraft:diamond",minecraft:item_name={text:"ダイヤモンド",color:"gold",italic:false}]
execute if score #gn5 kaji_tmp matches 1.. run item modify entity @s container.25 tm_workbench:gen/kaji/need_gn5
# 段階 6（赤）: 系統 17 番
execute unless score #n6 kaji_tmp matches 1.. run item replace entity @s container.17 with minecraft:bedrock[minecraft:custom_data={gui_slot:17},minecraft:item_model="minecraft:gray_stained_glass_pane",minecraft:tooltip_display={hide_tooltip:true}]
execute if score #n6 kaji_tmp matches 1.. if score #res kaji_tmp matches 1 run item replace entity @s container.17 with minecraft:bedrock[minecraft:custom_data={gui_slot:17},minecraft:item_model="minecraft:birch_sapling",minecraft:item_name={text:"古代の苗",color:"red",italic:false}]
execute if score #n6 kaji_tmp matches 1.. if score #res kaji_tmp matches 2 run item replace entity @s container.17 with minecraft:bedrock[minecraft:custom_data={gui_slot:17},minecraft:item_model="minecraft:chiseled_polished_blackstone",minecraft:item_name={text:"加工された古代の石",color:"red",italic:false}]
execute if score #n6 kaji_tmp matches 1.. if score #res kaji_tmp matches 3 run item replace entity @s container.17 with minecraft:bedrock[minecraft:custom_data={gui_slot:17},minecraft:item_model="minecraft:endermite_spawn_egg",minecraft:item_name={text:"ナニカの卵",color:"red",italic:false}]
execute if score #n6 kaji_tmp matches 1.. run item modify entity @s container.17 tm_workbench:gen/kaji/need_n6
execute unless score #gn6 kaji_tmp matches 1.. run item replace entity @s container.26 with minecraft:bedrock[minecraft:custom_data={gui_slot:26},minecraft:item_model="minecraft:gray_stained_glass_pane",minecraft:tooltip_display={hide_tooltip:true}]
execute if score #gn6 kaji_tmp matches 1.. run item replace entity @s container.26 with minecraft:bedrock[minecraft:custom_data={gui_slot:26},minecraft:item_model="minecraft:nether_star",minecraft:item_name={text:"輝き石",color:"red",italic:false}]
execute if score #gn6 kaji_tmp matches 1.. run item modify entity @s container.26 tm_workbench:gen/kaji/need_gn6
