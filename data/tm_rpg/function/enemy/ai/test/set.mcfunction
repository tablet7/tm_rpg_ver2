#> tm_rpg:enemy/ai/test/set

# 敵に、テスト用の技の選び方（tag ai_test）を持たせる。敵を出す関数のあとに呼ぶ（例: test/enemy_ai/summon）
# tag enemy_ai で enemy/main が enemy/ai/think を毎 tick 呼ぶ。最初の技まで 2 秒待つ
# @s ＝ 敵

tag @s add enemy_ai
tag @s add ai_test
scoreboard players set @s ai_cool 40
