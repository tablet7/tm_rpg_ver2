#> tm_workbench:kaji/kaizou/calc

# 改造に使う gold（#gold）と、使えない理由（#why。0 ＝ 使える）を計算する（kaji_tmp）
# kaji/refresh/kaizou・kaji/kaizou/do から。@s ＝ トロッコ。先に kaji/fake・kaji/kaizou/kit
# Lv の上限（#why 10）は持ち主の Lv が要るので kaji/kaizou/calc_have で見る

# gold ＝ 5000 × 3^改造した回数（改造した回数 10 より上は 3 倍しない。12 回目でスコアの上限を超えるため）
scoreboard players set #gold kaji_tmp 5000
execute if score #kz kaji_tmp matches 1.. run scoreboard players operation #gold kaji_tmp *= #3 kaji_tmp
execute if score #kz kaji_tmp matches 2.. run scoreboard players operation #gold kaji_tmp *= #3 kaji_tmp
execute if score #kz kaji_tmp matches 3.. run scoreboard players operation #gold kaji_tmp *= #3 kaji_tmp
execute if score #kz kaji_tmp matches 4.. run scoreboard players operation #gold kaji_tmp *= #3 kaji_tmp
execute if score #kz kaji_tmp matches 5.. run scoreboard players operation #gold kaji_tmp *= #3 kaji_tmp
execute if score #kz kaji_tmp matches 6.. run scoreboard players operation #gold kaji_tmp *= #3 kaji_tmp
execute if score #kz kaji_tmp matches 7.. run scoreboard players operation #gold kaji_tmp *= #3 kaji_tmp
execute if score #kz kaji_tmp matches 8.. run scoreboard players operation #gold kaji_tmp *= #3 kaji_tmp
execute if score #kz kaji_tmp matches 9.. run scoreboard players operation #gold kaji_tmp *= #3 kaji_tmp
execute if score #kz kaji_tmp matches 10.. run scoreboard players operation #gold kaji_tmp *= #3 kaji_tmp

# 使えない理由（0 ＝ 使える）。数字の意味は kaji/kaizou/why_msg
scoreboard players set #why kaji_tmp 0
execute if score #state kaji_tmp matches 0 run return run scoreboard players set #why kaji_tmp 1
execute if score #state kaji_tmp matches 1 run return run scoreboard players set #why kaji_tmp 2
execute if score #kit kaji_tmp matches 0 run return run scoreboard players set #why kaji_tmp 3
execute if score #kit kaji_tmp matches 9 run return run scoreboard players set #why kaji_tmp 4
# 使える物の種類: 錬石はすべて、2〜4（変質石・古代の残骸・可能性の琥珀）は防具・アクセサリー、5〜8（変性石・異流石）は武器・スキル
execute if score #kit kaji_tmp matches 2..4 unless score #kind kaji_tmp matches 3 run return run scoreboard players set #why kaji_tmp 6
execute if score #kit kaji_tmp matches 5..8 unless score #kind kaji_tmp matches 1..2 run return run scoreboard players set #why kaji_tmp 6
execute if score #kzc kaji_tmp matches ..0 run return run scoreboard players set #why kaji_tmp 5
# 物ごとに、使っても変わらないとき
# 変質石「HP」: すでに HP 特化（custom_model_data の floats が [2]。tm_rpg:system/stutas/percent_watch と同じ見方）
execute if score #kit kaji_tmp matches 2 if items entity @s container.10 *[minecraft:custom_model_data={floats:[2.0f]}] run return run scoreboard players set #why kaji_tmp 7
execute if score #kit kaji_tmp matches 3..4 run function tm_workbench:kaji/gear/read
execute if score #kit kaji_tmp matches 3 if score #cnt kaji_tmp matches ..0 run return run scoreboard players set #why kaji_tmp 11
execute if score #kit kaji_tmp matches 4 if score #cnt kaji_tmp matches 16.. run return run scoreboard players set #why kaji_tmp 9
execute if score #kit kaji_tmp matches 5..8 store result score #dt kaji_tmp run data get storage tm_workbench:kaji item.damage_type
execute if score #kit kaji_tmp matches 5..8 store result score #st kaji_tmp run data get storage tm_workbench:kaji item.sanshou_type
execute if score #kit kaji_tmp matches 5..8 store result score #kihon kaji_tmp run data get storage tm_workbench:kaji item.kihon
execute if score #kit kaji_tmp matches 5..8 store result score #per kaji_tmp run data get storage tm_workbench:kaji item.per
# ダメージの無いスキル（kihon も per も 0）には、ダメージタイプ・参照ステータスの lore の行が無い
execute if score #kit kaji_tmp matches 5..8 if score #kind kaji_tmp matches 2 if score #kihon kaji_tmp matches 0 if score #per kaji_tmp matches 0 run return run scoreboard players set #why kaji_tmp 8
execute if score #kit kaji_tmp matches 5 if score #dt kaji_tmp matches 1 run return run scoreboard players set #why kaji_tmp 7
execute if score #kit kaji_tmp matches 6 if score #dt kaji_tmp matches 2 run return run scoreboard players set #why kaji_tmp 7
execute if score #kit kaji_tmp matches 7 if score #st kaji_tmp matches 1 run return run scoreboard players set #why kaji_tmp 7
execute if score #kit kaji_tmp matches 8 if score #st kaji_tmp matches 2 run return run scoreboard players set #why kaji_tmp 7
