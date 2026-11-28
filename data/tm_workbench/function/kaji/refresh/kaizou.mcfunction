#> tm_workbench:kaji/refresh/kaizou

# 改造（画面 103）の案内（4 番）・使う gold（5 番）・改造アイテムの説明（14 番）を置き直す。kaji/refresh_in から
# @s ＝ トロッコ（持ち主に tag kaji_user）。画面の物（岩盤）の数は変えない

function tm_workbench:kaji/kaizou/kit
function tm_workbench:kaji/kaizou/calc
execute as @a[tag=kaji_user,limit=1] run function tm_workbench:kaji/kaizou/calc_have
item replace entity @s container.4 with minecraft:bedrock[minecraft:custom_data={gui_slot:4},minecraft:item_model="minecraft:smithing_table",minecraft:item_name={text:"改造",color:"white",italic:false}]
item modify entity @s container.4 tm_workbench:kaji/guide_kaizou
# 5 番のエメラルド（画面の物として置いてある）に、使う gold と持っている gold を書く（強化の画面と同じ item_modifier。#state・#gold・#ghave・#goldok を読む）
item modify entity @s container.5 tm_workbench:kaji/gold_kyouka
item replace entity @s container.14 with minecraft:bedrock[minecraft:custom_data={gui_slot:14},minecraft:item_model="minecraft:book",minecraft:item_name={text:"改造アイテムの説明",color:"white",italic:false}]
item modify entity @s container.14 tm_workbench:kaji/setsumei_kaizou
