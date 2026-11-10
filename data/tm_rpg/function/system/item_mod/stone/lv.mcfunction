#> tm_rpg:system/item_mod/stone/lv

# 錬石（loot_table tm_rpg:item/stone/lv）で、改造台の1スロット目のアイテム（武器・防具・アクセサリー・スキル）の Lv を上げる関数（マクロなし）
# item_mod/kaizou_select から、7スロット目に錬石（custom_data の stone:1）があるときに呼ばれる
# 上がる Lv ＝ 錬石の lv × 個数（スタックしていたらまとめて使う）。custom_data の kaizou も同じだけ増やす
# custom_data の lv・kaizou と、lore 1行目の「Lv: 〇  (kaizou / 10)」を書き換え、錬石を消す
# ブロックの NBT 読み込みは重いので、Items は1回だけ読んで storage で扱う
# @s ＝ 改造台の marker（ドロッパーと同じ位置）

# ドロッパーの中身をまとめて1回だけ読む
data modify storage tm_rpg:kaizou items set from block ~ ~ ~ Items

# 1スロット目が Lv を持つアイテムでなければ何もしない（錬石どうしは不可）
data remove storage tm_rpg:kaizou item
data modify storage tm_rpg:kaizou item set from storage tm_rpg:kaizou items[{Slot:1b}].components."minecraft:custom_data"
execute unless data storage tm_rpg:kaizou item.lv run return 0
execute if data storage tm_rpg:kaizou item.stone run return 0

# 上がる Lv ＝ 錬石の lv × 個数
execute store result score #stone_lv item_roll run data get storage tm_rpg:kaizou items[{Slot:7b}].components."minecraft:custom_data".lv
execute store result score #stone_count item_roll run data get storage tm_rpg:kaizou items[{Slot:7b}].count
scoreboard players operation #stone_lv item_roll *= #stone_count item_roll

# 新しい Lv（lore 表示用に #kaizou_lv item_roll にも入れる）
execute store result score #kaizou_lv item_roll run data get storage tm_rpg:kaizou item.lv
scoreboard players operation #kaizou_lv item_roll += #stone_lv item_roll
execute store result storage tm_rpg:kaizou item.lv int 1 run scoreboard players get #kaizou_lv item_roll

# 新しい kaizou（上がった Lv と同じだけ増やす）。lore の () には kaizou / 10 を表示する（#kaizou_count item_roll）
execute store result score #kaizou_count item_roll run data get storage tm_rpg:kaizou item.kaizou
scoreboard players operation #kaizou_count item_roll += #stone_lv item_roll
execute store result storage tm_rpg:kaizou item.kaizou int 1 run scoreboard players get #kaizou_count item_roll
scoreboard players set #10 item_roll 10
scoreboard players operation #kaizou_count item_roll /= #10 item_roll

# custom_data の lv・kaizou と lore 1行目をまとめて書き換え、錬石を消す
item modify block ~ ~ ~ container.1 tm_rpg:kaizou/lv_up
item replace block ~ ~ ~ container.7 with minecraft:air
