#> tm_rpg:system/item_drop/max

# ドロップアイテムの特化ステータス用に、必ず最大値を付ける関数（抽選なし・マクロなし）。item_drop/accessories/hp などの特化ドロップ関数から呼ばれる
# 入力: #lv / #base / #div item_roll（値 = #base + #lv / #div、0以下なら1）
# 出力: #result item_roll

scoreboard players operation #result item_roll = #lv item_roll
scoreboard players operation #result item_roll /= #div item_roll
scoreboard players operation #result item_roll += #base item_roll
execute if score #result item_roll matches ..0 run scoreboard players set #result item_roll 1
