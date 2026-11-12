#> tm_rpg:player/skill/start

# player/used_carrot_on_a_stick_skill から、発動条件（クールタイム・MP・Lv）を満たしたときに呼ばれる
# custom_data の skill に書かれたスキル関数を呼び、成功したときだけクールタイムと MP を処理する
# @s ＝ プレイヤー（at @s）

# skill（呼ぶ関数）が無いアイテムは発動しない（skill_on 0 のまま → 失敗音）
execute unless data storage tm_rpg:skill item.skill run return 0

# 出血
execute if score @s bleeding_time matches 1.. run function tm_rpg:system/abnormal/bleeding_damage

# スキル本体（成功で 1、不発で 0 が入る。関数 ID が間違っていると何も入らず 0 のまま → 失敗音）
execute store result score @s skill_on run function tm_rpg:player/skill/run with storage tm_rpg:skill item

execute if score @s skill_on matches 1.. run function tm_rpg:player/skill/common/finish
