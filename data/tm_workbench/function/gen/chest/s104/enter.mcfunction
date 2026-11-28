#> tm_workbench:gen/chest/s104/enter

# 画面 104（機能 1）に入る。前の画面で置く場所だった枠の物は返し、画面の物を並べ直す（gen/chest/enter から）
# gen_gui.py が作る（手で直さない。md/gui_md/screens.json・items.json・materials.json を直して作り直す）
# @s ＝ トロッコ（いる場所 ＝ 持ち主の足元）

scoreboard players set @s gui_screen 104
scoreboard players set @s gui_n 26
function tm_workbench:gen/chest/s104/return_other
# 置く場所に残った岩盤（前の画面の物）を消す
execute if items entity @s container.10 minecraft:bedrock run item replace entity @s container.10 with minecraft:air
# 画面の物を全部置き直す
item replace entity @s container.0 with minecraft:bedrock[minecraft:custom_data={gui_slot:0},minecraft:item_model="minecraft:gray_stained_glass_pane",minecraft:tooltip_display={hide_tooltip:true}]
item replace entity @s container.1 with minecraft:bedrock[minecraft:custom_data={gui_slot:1},minecraft:item_model="minecraft:gray_stained_glass_pane",minecraft:tooltip_display={hide_tooltip:true}]
item replace entity @s container.2 with minecraft:bedrock[minecraft:custom_data={gui_slot:2},minecraft:item_model="minecraft:gray_stained_glass_pane",minecraft:tooltip_display={hide_tooltip:true}]
item replace entity @s container.3 with minecraft:bedrock[minecraft:custom_data={gui_slot:3},minecraft:item_model="minecraft:gray_stained_glass_pane",minecraft:tooltip_display={hide_tooltip:true}]
item replace entity @s container.4 with minecraft:bedrock[minecraft:custom_data={gui_slot:4},minecraft:item_model="minecraft:grindstone",minecraft:item_name="分解"]
item replace entity @s container.5 with minecraft:bedrock[minecraft:custom_data={gui_slot:5},minecraft:item_model="minecraft:gray_stained_glass_pane",minecraft:tooltip_display={hide_tooltip:true}]
item replace entity @s container.6 with minecraft:bedrock[minecraft:custom_data={gui_slot:6},minecraft:item_model="minecraft:gray_stained_glass_pane",minecraft:tooltip_display={hide_tooltip:true}]
item replace entity @s container.7 with minecraft:bedrock[minecraft:custom_data={gui_slot:7},minecraft:item_model="minecraft:gray_stained_glass_pane",minecraft:tooltip_display={hide_tooltip:true}]
item replace entity @s container.8 with minecraft:bedrock[minecraft:custom_data={gui_slot:8},minecraft:item_model="minecraft:gray_stained_glass_pane",minecraft:tooltip_display={hide_tooltip:true}]
item replace entity @s container.9 with minecraft:bedrock[minecraft:custom_data={gui_slot:9},minecraft:item_model="minecraft:gray_stained_glass_pane",minecraft:tooltip_display={hide_tooltip:true}]
item replace entity @s container.11 with minecraft:bedrock[minecraft:custom_data={gui_slot:11},minecraft:item_model="minecraft:gray_stained_glass_pane",minecraft:tooltip_display={hide_tooltip:true}]
item replace entity @s container.12 with minecraft:bedrock[minecraft:custom_data={gui_slot:12},minecraft:item_model="minecraft:red_stained_glass_pane",minecraft:item_name="やめる"]
item replace entity @s container.13 with minecraft:bedrock[minecraft:custom_data={gui_slot:13},minecraft:item_model="minecraft:gray_stained_glass_pane",minecraft:tooltip_display={hide_tooltip:true}]
item replace entity @s container.14 with minecraft:bedrock[minecraft:custom_data={gui_slot:14},minecraft:item_model="minecraft:lime_stained_glass_pane",minecraft:item_name="分解する"]
item replace entity @s container.15 with minecraft:bedrock[minecraft:custom_data={gui_slot:15},minecraft:item_model="minecraft:gray_stained_glass_pane",minecraft:tooltip_display={hide_tooltip:true}]
item replace entity @s container.16 with minecraft:bedrock[minecraft:custom_data={gui_slot:16},minecraft:item_model="minecraft:gray_stained_glass_pane",minecraft:tooltip_display={hide_tooltip:true}]
item replace entity @s container.17 with minecraft:bedrock[minecraft:custom_data={gui_slot:17},minecraft:item_model="minecraft:gray_stained_glass_pane",minecraft:tooltip_display={hide_tooltip:true}]
item replace entity @s container.18 with minecraft:bedrock[minecraft:custom_data={gui_slot:18},minecraft:item_model="minecraft:gray_stained_glass_pane",minecraft:tooltip_display={hide_tooltip:true}]
item replace entity @s container.19 with minecraft:bedrock[minecraft:custom_data={gui_slot:19},minecraft:item_model="minecraft:gray_stained_glass_pane",minecraft:tooltip_display={hide_tooltip:true}]
item replace entity @s container.20 with minecraft:bedrock[minecraft:custom_data={gui_slot:20},minecraft:item_model="minecraft:gray_stained_glass_pane",minecraft:tooltip_display={hide_tooltip:true}]
item replace entity @s container.21 with minecraft:bedrock[minecraft:custom_data={gui_slot:21},minecraft:item_model="minecraft:gray_stained_glass_pane",minecraft:tooltip_display={hide_tooltip:true}]
item replace entity @s container.22 with minecraft:bedrock[minecraft:custom_data={gui_slot:22},minecraft:item_model="minecraft:gray_stained_glass_pane",minecraft:tooltip_display={hide_tooltip:true}]
item replace entity @s container.23 with minecraft:bedrock[minecraft:custom_data={gui_slot:23},minecraft:item_model="minecraft:gray_stained_glass_pane",minecraft:tooltip_display={hide_tooltip:true}]
item replace entity @s container.24 with minecraft:bedrock[minecraft:custom_data={gui_slot:24},minecraft:item_model="minecraft:gray_stained_glass_pane",minecraft:tooltip_display={hide_tooltip:true}]
item replace entity @s container.25 with minecraft:bedrock[minecraft:custom_data={gui_slot:25},minecraft:item_model="minecraft:gray_stained_glass_pane",minecraft:tooltip_display={hide_tooltip:true}]
item replace entity @s container.26 with minecraft:bedrock[minecraft:custom_data={gui_slot:26},minecraft:item_model="minecraft:gray_stained_glass_pane",minecraft:tooltip_display={hide_tooltip:true}]
# 表示の枠を今の状態で置き直す（screens.json の refresh）
function tm_workbench:kaji/refresh
