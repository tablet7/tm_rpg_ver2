#> tm_rpg:player/setting_storage

# 設定表示（スロット35のレッドストーントーチの説明文）に使う値を storage tm_rpg:setting に入れる関数。player/no_move から呼ばれる
# 入れた値は item_modifier tm_rpg:setting/update_setting_lore が読む
# @s ＝ プレイヤー

# 職業（job_type）
execute if score @s job_type matches 1 run data modify storage tm_rpg:setting job_type set value "戦士"
execute if score @s job_type matches 2 run data modify storage tm_rpg:setting job_type set value "狩人"
execute if score @s job_type matches 3 run data modify storage tm_rpg:setting job_type set value "魔術師"
execute if score @s job_type matches 4 run data modify storage tm_rpg:setting job_type set value "守護者"
