#> tm_rpg:system/item_drop/accessories/hp

# HP特化のアクセサリー（loot_table tm_rpg:item/accessories/hp）をその場にドロップする関数
# HP と HP自動回復は必ず最大値で付き、それ以外は通常（roll_default）と同じ確率で付く
# 使い方: execute as <倒したモブ> at @s run function tm_rpg:system/item_drop/accessories/hp
# @s ＝ 倒したモブ

# 全ステータスを通常の確率で抽選
function tm_rpg:system/item_drop/accessories/roll_default

# 特化ステータスは抽選せず、必ず最大値（#base + Lv / #div）を付ける
## HP（必ず 10+Lv/2）
scoreboard players set #base item_roll 10
scoreboard players set #div item_roll 2
function tm_rpg:system/item_drop/max
scoreboard players operation hp item_roll = #result item_roll
execute store result storage tm_rpg:item_random data.hp int 1 run scoreboard players get #result item_roll

## HP自動回復（必ず 1+Lv/4）
scoreboard players set #base item_roll 1
scoreboard players set #div item_roll 4
function tm_rpg:system/item_drop/max
scoreboard players operation hp_rege item_roll = #result item_roll
execute store result storage tm_rpg:item_random data.hp_rege int 1 run scoreboard players get #result item_roll

# ドロップ
loot spawn ~ ~ ~ loot tm_rpg:item/accessories/hp
