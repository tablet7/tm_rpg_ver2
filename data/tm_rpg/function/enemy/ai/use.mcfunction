#> tm_rpg:enemy/ai/use

# 敵の種類（tag ai_<種類>）ごとに、選んだ技（#ai_pick temp）を使う関数（enemy/ai/<種類>/use）を呼ぶ。enemy/ai/think から呼ばれる
# 技を選ぶ種類を増やしたら、ここと enemy/ai/list に1行ずつ足す
# @s ＝ 敵（at @s）。狙うプレイヤーに tag ai_target

execute if entity @s[tag=ai_test] run return run function tm_rpg:enemy/ai/test/use
execute if entity @s[tag=ai_mecha_mosquito] run return run function tm_rpg:enemy/ai/mecha_mosquito/use
