#> tm_rpg:test/test_item

# テスト用のアイテム（アクセサリー・鉄のレギンス・テスト武器2種・矢）を自分に配る関数
# 手動で実行する: function tm_rpg:test/test_item
# @s ＝ 受け取るプレイヤー

function tm_rpg:system/item_drop/accessories/default
function tm_rpg:system/item_drop/armor/leggings/iron
loot give @s loot tm_rpg:item/weapon/test_weapon
loot give @s loot tm_rpg:item/weapon/test_weapon2
give @s arrow
