#> tm_workbench:test/kaizou_setup

# 改造の確かめ用。手に持った物の強化回数を 30 にし、改造アイテム 8 種類を 2 つずつと gold を渡す
# 使い方: 改造したい物を手に持って /function tm_workbench:test/kaizou_setup（先に tm_workbench:test/kaji_setup）
# 説明: md/gui_md/kaji.md の「改造」

# 手に持った物（custom_data に lv がある物）の強化回数を 30 にする（改造できる回数 3。lore の「( )」は強化するまで前の数のまま）
item modify entity @s weapon.mainhand tm_workbench:test/kyouka30
# 改造アイテムを 2 つずつ
loot give @s loot tm_workbench:gen/item/renseki
loot give @s loot tm_workbench:gen/item/renseki
loot give @s loot tm_workbench:gen/item/henshitsu_hp
loot give @s loot tm_workbench:gen/item/henshitsu_hp
loot give @s loot tm_workbench:gen/item/kodai_zangai
loot give @s loot tm_workbench:gen/item/kodai_zangai
loot give @s loot tm_workbench:gen/item/kanousei_kohaku
loot give @s loot tm_workbench:gen/item/kanousei_kohaku
loot give @s loot tm_workbench:gen/item/hensei_butsuri
loot give @s loot tm_workbench:gen/item/hensei_butsuri
loot give @s loot tm_workbench:gen/item/hensei_mahou
loot give @s loot tm_workbench:gen/item/hensei_mahou
loot give @s loot tm_workbench:gen/item/iryuu_butsuri
loot give @s loot tm_workbench:gen/item/iryuu_butsuri
loot give @s loot tm_workbench:gen/item/iryuu_mahou
loot give @s loot tm_workbench:gen/item/iryuu_mahou
# gold（改造は 5000・15000・45000 … と増える）
scoreboard players add @s gold 10000000
tellraw @s {"text": "[確認] 手に持った物の強化回数を 30 にし、改造アイテムを 2 つずつと gold 1000 万を渡しました", "color": "aqua"}
