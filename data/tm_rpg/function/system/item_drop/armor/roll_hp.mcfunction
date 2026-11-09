#> tm_rpg:system/item_drop/armor/roll_hp

# HP特化の防具用に、ステータスを抽選して結果を storage tm_rpg:item_random data と各スコア（<ステータス名> item_roll）に入れる関数
# HP と HP自動回復は必ず最大値で付き、それ以外は通常（accessories/roll_default）と同じ確率で付く
# item_drop/armor/helmet/iron_hp など、HP特化の防具のドロップ関数から呼ばれる
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
