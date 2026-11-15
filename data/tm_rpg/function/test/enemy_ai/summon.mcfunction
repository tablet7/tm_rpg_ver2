#> tm_rpg:test/enemy_ai/summon

# 技を選ぶ仕組み（enemy/ai）を試す関数。目の前 8 マスに動かないテスト用の敵を出し、テスト用の技の選び方（tag ai_test）を持たせる
# 手動で実行する: function tm_rpg:test/enemy_ai/summon（消すときは kill @e[type=minecraft:skeleton,tag=ai_test]）
# 距離で使う技が変わる（5 マス以内 ＝ 吹き飛ばし、6〜20 ＝ レーザー など。enemy/ai/test/list）
# @s ＝ 試すプレイヤー（at @s）。ダメージを確かめるときはサバイバルで実行する

execute rotated ~ 0 positioned ^ ^ ^8 run function tm_rpg:enemy/summon/test/no_move_test_enemy
execute rotated ~ 0 positioned ^ ^ ^8 as @n[type=minecraft:skeleton,tag=test,tag=!enemy_ai,distance=..1] run function tm_rpg:enemy/ai/test/set
