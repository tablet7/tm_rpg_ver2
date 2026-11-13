#> tm_rpg:system/item_drop/armor/helmet/iron_hp

# HP特化の鉄のヘルメット（loot_table tm_rpg:item/armor/helmet/iron_hp）をその場にドロップする関数
# HP と HP自動回復は必ず最大値で付き、それ以外は通常（accessories/roll_default）と同じ確率で付く
# 使い方: execute as <倒したモブ> at @s run function tm_rpg:system/item_drop/armor/helmet/iron_hp
# @s ＝ 倒したモブ

# ステータスを抽選（HP特化）
function tm_rpg:system/item_drop/armor/roll_hp

# ドロップ
loot spawn ~ ~ ~ loot tm_rpg:item/armor/helmet/iron_hp
