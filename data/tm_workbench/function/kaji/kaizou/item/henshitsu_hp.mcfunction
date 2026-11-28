#> tm_workbench:kaji/kaizou/item/henshitsu_hp

# 変質石「HP」: 防具・アクセサリーの特化を HP にする（名前に [HP]、lore の説明の行、custom_model_data の floats を [2]）
# kaji/kaizou/success から。@s ＝ トロッコ
# 最大HP ＋10% は tm_rpg:system/stutas/percent_watch が floats [2] を見て付ける（装備したときに読み直される）
# 要確認: 名前を storage の文字から作る（set_name の nbt の文字）。名前が崩れたら教えてもらう

# 名前: 今の名前の文字を読み、最後が [] なら外してから [HP] を付ける（アクセサリーは「アクセサリー[]」、防具は「鉄のヘルメット」のように括弧が無い）
# トロッコの中の物の名前は、スコアやアイテム述語では読めないので NBT を読む（改造を押したときの1回だけ）
data remove storage tm_workbench:kaji name
data modify storage tm_workbench:kaji name set from entity @s Items[{Slot:10b}].components."minecraft:custom_name".text
execute unless data storage tm_workbench:kaji name run data modify storage tm_workbench:kaji name set from entity @s Items[{Slot:10b}].components."minecraft:custom_name"
data modify storage tm_workbench:kaji tail set string storage tm_workbench:kaji name -2
execute if data storage tm_workbench:kaji {tail:"[]"} run data modify storage tm_workbench:kaji name set string storage tm_workbench:kaji name 0 -2
item modify entity @s container.10 tm_workbench:kaji/kaizou/hp
