#> tm_rpg:system/item_drop/accessories/default

# 倒したモブの Lv に合わせて、ランダムなステータスのアクセサリー（loot_table tm_rpg:item/accessories/defalt）を、受け取る人（tag item_drop.receiver のプレイヤー）全員に直接渡す関数
# 1人ずつ抽選し直すので、受け取る人ごとにステータスと見た目は違う
# 使い方: 受け取る人に tag item_drop.receiver を付けてから execute as <倒したモブ> at @s run function tm_rpg:system/item_drop/accessories/default
#   敵を倒したときは enemy/death_main が、その敵にダメージを与えたプレイヤー全員に tag を付けてから呼ぶ（system/item_drop/hit_mark/take）
#   tag item_drop.receiver はここでは外さない（呼んだ側が外す）
# @s ＝ 倒したモブ（Lv を抽選に使う）
# 確率と値の範囲は item_drop/accessories/roll_default で調整する

# まだ渡していない受け取る人がいなければ終わり（渡し済みの tag item_drop.done を外す）
execute unless entity @a[tag=item_drop.receiver,tag=!item_drop.done,limit=1] run return run tag @a remove item_drop.done

# 1人選ぶ
tag @a[tag=item_drop.receiver,tag=!item_drop.done,limit=1] add item_drop.now

# 全ステータスを抽選
function tm_rpg:system/item_drop/accessories/roll_default

# 渡す
loot give @a[tag=item_drop.now,limit=1] loot tm_rpg:item/accessories/defalt
tag @a[tag=item_drop.now] add item_drop.done
tag @a remove item_drop.now

# 次の人
function tm_rpg:system/item_drop/accessories/default
