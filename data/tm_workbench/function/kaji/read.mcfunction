#> tm_workbench:kaji/read

# 置く場所（10 番）の物の custom_data を storage tm_workbench:kaji item に読み、種類・Lv・強化回数などをトロッコのスコアに入れる
# kaji/changed・kaji/recheck から呼ばれる。@s ＝ トロッコ（kaji_has を先に入れておく）
# 種類: custom_data に skill があればスキル（2）、kinsetu があれば武器（1）、hp があれば防具・アクセサリー（3）。lv が無い物・どれでもない物（昔の錬石など）は 0（強化・分解できない）
# kyouka が無い物は 0、upgrade_res が無い物・1〜3 でない物は 2（石系）とみなす

scoreboard players set @s kaji_kind 0
scoreboard players set @s kaji_lv 0
scoreboard players set @s kaji_kyouka 0
scoreboard players set @s kaji_kaizou 0
scoreboard players set @s kaji_res 2
data remove storage tm_workbench:kaji item
execute unless score @s kaji_has matches 1 run return 0

# トロッコの中の物の値は、スコアや items（アイテム述語）では読めないので、custom_data を1回だけ読む（置いた物が変わったとき・ボタンを押したときだけ）
data modify storage tm_workbench:kaji item set from entity @s Items[{Slot:10b}].components."minecraft:custom_data"
execute unless data storage tm_workbench:kaji item.lv run return 0
execute if data storage tm_workbench:kaji item.hp run scoreboard players set @s kaji_kind 3
execute if data storage tm_workbench:kaji item.kinsetu run scoreboard players set @s kaji_kind 1
execute if data storage tm_workbench:kaji item.skill run scoreboard players set @s kaji_kind 2
execute store result score @s kaji_lv run data get storage tm_workbench:kaji item.lv
execute store result score @s kaji_kyouka run data get storage tm_workbench:kaji item.kyouka
execute store result score @s kaji_kaizou run data get storage tm_workbench:kaji item.kaizou
execute if data storage tm_workbench:kaji item.upgrade_res store result score @s kaji_res run data get storage tm_workbench:kaji item.upgrade_res
execute unless score @s kaji_res matches 1..3 run scoreboard players set @s kaji_res 2
