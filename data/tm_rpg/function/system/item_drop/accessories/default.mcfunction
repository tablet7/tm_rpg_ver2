#> tm_rpg:system/item_drop/accessories/default

# 倒したモブの Lv に合わせて、ランダムなステータスのアクセサリー（loot_table tm_rpg:item/accessories/defalt）をその場にドロップする関数
# 使い方: execute as <倒したモブ> at @s run function tm_rpg:system/item_drop/accessories/default
# @s ＝ 倒したモブ
# 確率と値の範囲は item_drop/accessories/roll_default で調整する

# 全ステータスを抽選
function tm_rpg:system/item_drop/accessories/roll_default

# ドロップ
loot spawn ~ ~ ~ loot tm_rpg:item/accessories/defalt
