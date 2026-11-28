#> tm_workbench:kaji/kaizou/kit

# 改造アイテムを置く場所（12 番）の物を見分け、#kit kaji_tmp とトロッコの kaji_kit に入れる
# 0 ＝ 何も無い・9 ＝ 改造アイテムでない物・1 錬石（renseki）・2 変質石「HP」（henshitsu_hp）・3 古代の残骸（kodai_zangai）・4 可能性の琥珀（kanousei_kohaku）・5 変性石「物理」（hensei_butsuri）・6 変性石「魔法」（hensei_mahou）・7 異流石「物理」（iryuu_butsuri）・8 異流石「魔法」（iryuu_mahou）
# custom_data の kaizou_item をアイテム述語で見る（NBT を読まない）。@s ＝ トロッコ

scoreboard players set #kit kaji_tmp 0
execute if items entity @s container.12 * run scoreboard players set #kit kaji_tmp 9
execute if items entity @s container.12 *[minecraft:custom_data~{kaizou_item:"renseki"}] run scoreboard players set #kit kaji_tmp 1
execute if items entity @s container.12 *[minecraft:custom_data~{kaizou_item:"henshitsu_hp"}] run scoreboard players set #kit kaji_tmp 2
execute if items entity @s container.12 *[minecraft:custom_data~{kaizou_item:"kodai_zangai"}] run scoreboard players set #kit kaji_tmp 3
execute if items entity @s container.12 *[minecraft:custom_data~{kaizou_item:"kanousei_kohaku"}] run scoreboard players set #kit kaji_tmp 4
execute if items entity @s container.12 *[minecraft:custom_data~{kaizou_item:"hensei_butsuri"}] run scoreboard players set #kit kaji_tmp 5
execute if items entity @s container.12 *[minecraft:custom_data~{kaizou_item:"hensei_mahou"}] run scoreboard players set #kit kaji_tmp 6
execute if items entity @s container.12 *[minecraft:custom_data~{kaizou_item:"iryuu_butsuri"}] run scoreboard players set #kit kaji_tmp 7
execute if items entity @s container.12 *[minecraft:custom_data~{kaizou_item:"iryuu_mahou"}] run scoreboard players set #kit kaji_tmp 8
scoreboard players operation @s kaji_kit = #kit kaji_tmp
