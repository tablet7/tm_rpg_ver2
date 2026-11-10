#> tm_rpg:system/item_mod/kaizou_select

# 改造台の7スロット目に入れた改造用アイテムの種類を判定し、それぞれの改造処理に振り分ける関数
# item_mod/kaizoudai_main から、1スロット目に custom_data 付きのアイテム、7スロット目にレッドストーンがあるときに呼ばれる
# 判定は items（アイテム述語）だけで行い、NBT は振り分け先で1回だけ読む
# @s ＝ 改造台の marker（ドロッパーと同じ位置）

# 錬石（stone:1）: Lv を上げる
execute if items block ~ ~ ~ container.7 minecraft:redstone[custom_data~{stone:1}] run return run function tm_rpg:system/item_mod/stone/lv
