#> tm_rpg:system/item_drop/accessories/hp

# HP特化のアクセサリー（loot_table tm_rpg:item/accessories/hp）を、受け取る人（tag item_drop.receiver のプレイヤー）全員に直接渡す関数
# HP と HP自動回復は必ず最大値で付き、それ以外は通常（roll_default）と同じ確率で付く。1人ずつ抽選し直すので、受け取る人ごとに中身は違う
# 使い方: 受け取る人に tag item_drop.receiver を付けてから execute as <倒したモブ> at @s run function tm_rpg:system/item_drop/accessories/hp
#   tag item_drop.receiver はここでは外さない（呼んだ側が外す）。付け方は item_drop/accessories/default と同じ
# @s ＝ 倒したモブ（Lv を抽選に使う）

# まだ渡していない受け取る人がいなければ終わり（渡し済みの tag item_drop.done を外す）
execute unless entity @a[tag=item_drop.receiver,tag=!item_drop.done,limit=1] run return run tag @a remove item_drop.done

# 1人選ぶ
tag @a[tag=item_drop.receiver,tag=!item_drop.done,limit=1] add item_drop.now

# 全ステータスを通常の確率で抽選
function tm_rpg:system/item_drop/accessories/roll_default

# 特化ステータスは抽選せず、必ず最大値（#base + Lv / #div）を付ける
## HP（必ず 10+Lv/2）
scoreboard players set #stat item_roll 1
function tm_rpg:system/item_drop/stat_range
function tm_rpg:system/item_drop/max
scoreboard players operation hp item_roll = #result item_roll
execute store result storage tm_rpg:item_random data.hp int 1 run scoreboard players get #result item_roll

## HP自動回復（必ず 1+Lv/4）
scoreboard players set #stat item_roll 2
function tm_rpg:system/item_drop/stat_range
function tm_rpg:system/item_drop/max
scoreboard players operation hp_rege item_roll = #result item_roll
execute store result storage tm_rpg:item_random data.hp_rege int 1 run scoreboard players get #result item_roll

# 渡す
loot give @a[tag=item_drop.now,limit=1] loot tm_rpg:item/accessories/hp
tag @a[tag=item_drop.now] add item_drop.done
tag @a remove item_drop.now

# 次の人
function tm_rpg:system/item_drop/accessories/hp
