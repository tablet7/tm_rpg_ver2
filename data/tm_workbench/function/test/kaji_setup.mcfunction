#> tm_workbench:test/kaji_setup

# 鍛冶台（機能 1）を目の前に置き、確かめるための物（武器・スキル・アクセサリー・防具）と、素材・gold を渡す。手で /function tm_workbench:test/kaji_setup を打つ
# 確かめ方: md/gui_md/kaji.md。片付けは test/kaji_cleanup
# @s ＝ プレイヤー（持ち物に 4 つ空きを作っておく）

scoreboard players set #place_id gui_tmp 0
scoreboard players set #place_type gui_tmp 1
execute rotated ~ 0 positioned ^ ^ ^2 run function tm_workbench:gui/block/place

# 武器・スキル
loot give @s loot tm_rpg:item/weapon/test_weapon
loot give @s loot tm_rpg:item/skill/fairy
# アクセサリー・防具（値は自分の Lv で抽選。ドロップと同じ roll_default を使う）
function tm_rpg:system/item_drop/accessories/roll_default
loot give @s loot tm_rpg:item/accessories/defalt
function tm_rpg:system/item_drop/accessories/roll_default
loot give @s loot tm_rpg:item/armor/helmet/iron

# 素材（今の装備には upgrade_res が無いので、石系 ＋ 宝石系を使う）と gold
scoreboard players add @s mat_stone1 2000
scoreboard players add @s mat_stone2 500
scoreboard players add @s mat_gem1 2000
scoreboard players add @s mat_gem2 500
scoreboard players add @s gold 100000
tellraw @s {"text":"[確認] 目の前に鍛冶台を置き、武器・スキル・アクセサリー・防具と、石系・宝石系の素材（白 2000・緑 500）、gold 100000 を渡しました","color":"aqua"}
