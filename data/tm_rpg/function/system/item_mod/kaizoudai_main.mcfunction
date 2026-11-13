#> tm_rpg:system/item_mod/kaizoudai_main

# 改造台（ドロッパーに marker を重ねたもの）の処理。time/time_tick_sec/tick5・10・15・20 から（5tick おきに）marker（tag=kaizoudai）ごとに呼ばれる
# 1スロット目に改造したいアイテム、7スロット目に改造用アイテムを入れる。それ以外のスロットは岩盤で埋める
# 4スロット目の案内用アイテムも岩盤（item_model でレッドストーンブロックの見た目にする）なので、取り出されても tm_rpg:main の clear で消える
# @s ＝ 改造台の marker（ドロッパーと同じ位置）

execute unless items block ~ ~ ~ container.0 * run item replace block ~ ~ ~ container.0 with minecraft:bedrock
execute unless items block ~ ~ ~ container.2 * run item replace block ~ ~ ~ container.2 with minecraft:bedrock
execute unless items block ~ ~ ~ container.3 * run item replace block ~ ~ ~ container.3 with minecraft:bedrock
execute unless items block ~ ~ ~ container.4 * run item replace block ~ ~ ~ container.4 with minecraft:bedrock[item_model="minecraft:redstone_block",custom_name={"text":"↑改造したいアイテム","color":"yellow","italic":false},lore=[{"text":"改造台","color":"white","italic":false},{"text":"↓改造用アイテム","color":"yellow","italic":false}]]
execute unless items block ~ ~ ~ container.5 * run item replace block ~ ~ ~ container.5 with minecraft:bedrock
execute unless items block ~ ~ ~ container.6 * run item replace block ~ ~ ~ container.6 with minecraft:bedrock
execute unless items block ~ ~ ~ container.8 * run item replace block ~ ~ ~ container.8 with minecraft:bedrock

# 1スロット目に custom_data 付きのアイテム、7スロット目に custom_data 付きのレッドストーンがあるときだけ改造する（items だけで判定し、NBT は読まない）
execute if items block ~ ~ ~ container.1 *[custom_data] if items block ~ ~ ~ container.7 minecraft:redstone[custom_data] run function tm_rpg:system/item_mod/kaizou_select
