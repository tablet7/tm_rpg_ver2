#> tm_workbench:kaji/refresh/kyouka

# 強化（画面 102）の案内（4 番）・使う gold（5 番）・「足りない分を変換」（6 番）と素材の枠（12〜17・21〜26 番）を置き直す。kaji/refresh_in から
# @s ＝ トロッコ（持ち主に tag kaji_user）

function tm_workbench:kaji/kyouka/calc
execute as @a[tag=kaji_user,limit=1] run function tm_workbench:kaji/kyouka/calc_have
item replace entity @s container.4 with minecraft:bedrock[minecraft:custom_data={gui_slot:4},minecraft:item_model="minecraft:anvil",minecraft:item_name={text:"強化",color:"white",italic:false}]
item modify entity @s container.4 tm_workbench:kaji/guide_kyouka
# 5 番のエメラルド（画面の物として置いてある）に、使う gold と持っている gold を書く
item modify entity @s container.5 tm_workbench:kaji/gold_kyouka
function tm_workbench:gen/kaji/mat_show
# 6 番「足りない分を変換」に、崩す計画を書く
function tm_workbench:gen/kaji/fill_calc
item modify entity @s container.6 tm_workbench:gen/kaji/fill_plan
