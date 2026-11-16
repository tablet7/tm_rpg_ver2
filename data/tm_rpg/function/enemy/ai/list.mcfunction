#> tm_rpg:enemy/ai/list

# 敵の種類（tag ai_<種類>）ごとの技の一覧（enemy/ai/<種類>/list）を呼ぶ。enemy/ai/think から呼ばれる（関数名を変えるマクロを使わない）
# 技を選ぶ種類を増やしたら、ここと enemy/ai/use に1行ずつ足す
# @s ＝ 敵（at @s）

execute if entity @s[tag=ai_test] run return run function tm_rpg:enemy/ai/test/list
execute if entity @s[tag=ai_mecha_mosquito] run return run function tm_rpg:enemy/ai/mecha_mosquito/list
