#> tm_rpg:test/enemy_skill/start

# 敵用スキル（enemy/skill/）をまとめて試す関数。目の前 3 マスに動かないテスト用の敵を出し、5 秒ごとに1つずつ、自分に向けて使わせる
# 手動で実行する: function tm_rpg:test/enemy_skill/start
#   途中のスキルから始める: function tm_rpg:test/enemy_skill/start のあとで scoreboard players set #step test_skill <番号>（番号は test/enemy_skill/use）
#   途中で止める: function tm_rpg:test/enemy_skill/stop
# 毎 tick の処理は main が test/enemy_skill/tick を呼ぶ（#step test_skill が 1 以上のあいだ）
# @s ＝ 試すプレイヤー（at @s）。ダメージを確かめるときはサバイバルで実行する

# 前のテストを片付ける
function tm_rpg:test/enemy_skill/stop

# テスト用の敵（NoAI のスケルトン）を目の前 3 マス（足元の高さ）に出して、tag skill_tester を付ける
execute rotated ~ 0 positioned ^ ^ ^3 run function tm_rpg:enemy/summon/test/no_move_test_enemy
execute rotated ~ 0 positioned ^ ^ ^3 run tag @n[type=minecraft:skeleton,tag=test,tag=!skill_tester,distance=..1] add skill_tester
execute as @n[type=minecraft:skeleton,tag=skill_tester,distance=..6] run rotate @s facing entity @p[distance=..6] feet

# 1 番目から、1 秒後に始める
scoreboard players set #step test_skill 1
scoreboard players set #timer test_skill 20
tellraw @s [{"text":"[敵スキルテスト] ","color":"gold"},{"text":"始めます（5 秒ごとに1つ。止めるときは function tm_rpg:test/enemy_skill/stop）","color":"white"}]
