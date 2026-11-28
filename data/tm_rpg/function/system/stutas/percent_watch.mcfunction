#> tm_rpg:system/stutas/percent_watch

# 特化装備（防具・アクセサリー）による割合（%）ボーナスの倍率を求めて覚えておく関数。stutas/eq_update から、装備が変わったときだけ呼ばれる
# 倍率をかけるのは stutas/percent_bonus（ステータスを組み立てるとき）
# 対象はオフハンド（アクセサリー）と防具4か所。custom_model_data の floats で特化の種類を判定する（完全一致。NBT は読まない）
# @s ＝ プレイヤーまたは敵

# HP特化（floats が [2]）1か所につき最大HP +10%。eq_pct_hp に倍率（%）を入れる
scoreboard players set @s eq_pct_hp 100
execute if items entity @s weapon.offhand *[custom_model_data={floats:[2.0f]}] run scoreboard players add @s eq_pct_hp 10
execute if items entity @s armor.head *[custom_model_data={floats:[2.0f]}] run scoreboard players add @s eq_pct_hp 10
execute if items entity @s armor.chest *[custom_model_data={floats:[2.0f]}] run scoreboard players add @s eq_pct_hp 10
execute if items entity @s armor.legs *[custom_model_data={floats:[2.0f]}] run scoreboard players add @s eq_pct_hp 10
execute if items entity @s armor.feet *[custom_model_data={floats:[2.0f]}] run scoreboard players add @s eq_pct_hp 10
