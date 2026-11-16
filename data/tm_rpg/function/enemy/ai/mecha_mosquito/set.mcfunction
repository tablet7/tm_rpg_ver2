#> tm_rpg:enemy/ai/mecha_mosquito/set

# 敵に、技の選び方「mecha_mosquito」（tag ai_mecha_mosquito）を持たせる。敵を出す関数のあとに、その敵として呼ぶ
# tag enemy_ai で enemy/main が enemy/ai/think を毎 tick 呼ぶ
# @s ＝ 敵

tag @s add enemy_ai
tag @s add ai_mecha_mosquito
scoreboard players set @s ai_cool 40
