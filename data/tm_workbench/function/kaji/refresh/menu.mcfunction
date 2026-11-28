#> tm_workbench:kaji/refresh/menu

# メニュー（画面 101）の案内（4 番）を置き直す。kaji/refresh_in から
# @s ＝ トロッコ

item replace entity @s container.4 with minecraft:bedrock[minecraft:custom_data={gui_slot:4},minecraft:item_model="minecraft:smithing_table",minecraft:item_name={text:"鍛冶台",color:"white",italic:false}]
item modify entity @s container.4 tm_workbench:kaji/guide_menu
