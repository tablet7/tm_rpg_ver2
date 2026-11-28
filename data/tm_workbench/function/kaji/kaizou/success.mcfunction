#> tm_workbench:kaji/kaizou/success

# 改造に成功したとき。改造アイテムごとの効果（kaji/kaizou/item/）を動かし、kaizou ＋1 を書く。kaji/kaizou/do から
# @s ＝ トロッコ。storage tm_workbench:kaji item ＝ 置いた物の custom_data（kaji/recheck で読んだ物）

# 改造した回数 ＋1（先に足す。防具・アクセサリーの書き直し kaji/gear/write も #kz を書くため）
scoreboard players add #kz kaji_tmp 1
execute store result storage tm_workbench:kaji item.kaizou int 1 run scoreboard players get #kz kaji_tmp
# lore の「( )」に出す改造できる回数（1 減る）
function tm_workbench:kaji/kzc
execute if score #kit kaji_tmp matches 1 run function tm_workbench:kaji/kaizou/item/renseki
execute if score #kit kaji_tmp matches 2 run function tm_workbench:kaji/kaizou/item/henshitsu_hp
execute if score #kit kaji_tmp matches 3 run function tm_workbench:kaji/kaizou/item/kodai_zangai
execute if score #kit kaji_tmp matches 4 run function tm_workbench:kaji/kaizou/item/kanousei_kohaku
execute if score #kit kaji_tmp matches 5..6 run function tm_workbench:kaji/kaizou/item/hensei
execute if score #kit kaji_tmp matches 7..8 run function tm_workbench:kaji/kaizou/item/iryuu
# kaizou を custom_data に書く（どの改造でも。書かないと改造できる回数が減らない）
item modify entity @s container.10 tm_workbench:kaji/write/kaizou
# lore の 0 行目（Lv と改造できる回数）。Lv が変わらない改造でも ( ) が 1 減るので、どの改造でも書く
item modify entity @s container.10 tm_workbench:kaji/write/lv_line
execute as @a[tag=kaji_user,limit=1] at @s run playsound minecraft:block.smithing_table.use master @s ~ ~ ~ 1 1
tellraw @a[tag=kaji_user,limit=1] [{"text": "[鍛冶台] 改造に成功しました（改造した回数 ", "color": "green"}, {"score": {"name": "#kz", "objective": "kaji_tmp"}, "color": "green"}, {"text": "）", "color": "green"}]
