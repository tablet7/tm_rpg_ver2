#> tm_rpg:system/stutas/percent_bonus

# 特化装備（防具・アクセサリー）によるステータスの割合（%）ボーナスをかける関数。stutas/hendou_main から毎 tick 呼ばれる
# 装備・バフ・基礎値を合計した後の値（各 *_score）に倍率をかける
# 対象はオフハンド（アクセサリー）と防具4か所。custom_model_data の floats で特化の種類を判定する（完全一致）
# NBT は読まず execute if items だけで判定するので軽い
# @s ＝ プレイヤーまたは敵

# 共通の定数
scoreboard players set #100 temp 100

# HP特化（floats が [2]）1か所につき最大HP +10%
## #hp_up temp に倍率（%）を入れる
scoreboard players set #hp_up temp 100
execute if items entity @s weapon.offhand *[custom_model_data={floats:[2.0f]}] run scoreboard players add #hp_up temp 10
execute if items entity @s armor.head *[custom_model_data={floats:[2.0f]}] run scoreboard players add #hp_up temp 10
execute if items entity @s armor.chest *[custom_model_data={floats:[2.0f]}] run scoreboard players add #hp_up temp 10
execute if items entity @s armor.legs *[custom_model_data={floats:[2.0f]}] run scoreboard players add #hp_up temp 10
execute if items entity @s armor.feet *[custom_model_data={floats:[2.0f]}] run scoreboard players add #hp_up temp 10
execute unless score #hp_up temp matches 100 run scoreboard players operation @s hp_score *= #hp_up temp
execute unless score #hp_up temp matches 100 run scoreboard players operation @s hp_score /= #100 temp
