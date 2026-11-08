#> tm_rpg:system/item_drop/roll

# ドロップアイテムのステータスを1つ抽選する関数（マクロなし）。item_drop/accessories/... などのドロップ関数から呼ばれる
# 入力: #lv / #per / #base / #div item_roll（#per＝付く確率(%)、値の範囲＝1 〜 (#base + #lv / #div)、最大値が0以下なら1）
# 出力: #result item_roll（付かなかったら0）

scoreboard players set #result item_roll 0

# 付くかどうか（#per %）
execute store result score #rand item_roll run random value 1..100
execute if score #rand item_roll > #per item_roll run return 0

# 最大値 = #base + #lv / #div
scoreboard players operation #max item_roll = #lv item_roll
scoreboard players operation #max item_roll /= #div item_roll
scoreboard players operation #max item_roll += #base item_roll
execute if score #max item_roll matches ..0 run scoreboard players set #max item_roll 1

# 値 = 1 〜 最大値（random value の範囲に変数を使えないため、剰余で範囲を作る）
execute store result score #result item_roll run random value 0..2147483646
scoreboard players operation #result item_roll %= #max item_roll
scoreboard players add #result item_roll 1
