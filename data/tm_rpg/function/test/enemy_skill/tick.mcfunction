#> tm_rpg:test/enemy_skill/tick

# 敵用スキルのまとめテストの毎 tick の処理。main から呼ばれる（#step test_skill が 1 以上のあいだ）
# #timer test_skill が 0 になったら、テスト用の敵に次のスキルを使わせる（test/enemy_skill/use）
# @s ＝ サーバー（main の実行者）

# テスト用の敵がいなくなったら止める
execute unless entity @e[type=minecraft:skeleton,tag=skill_tester,limit=1] run tellraw @a [{"text":"[敵スキルテスト] ","color":"gold"},{"text":"テスト用の敵がいないので止めました","color":"red"}]
execute unless entity @e[type=minecraft:skeleton,tag=skill_tester,limit=1] run return run function tm_rpg:test/enemy_skill/stop

scoreboard players remove #timer test_skill 1
execute if score #timer test_skill matches 1.. run return 0

# 次のスキル（敵の足元から、いちばん近いプレイヤーの目の方を向いて使う）
execute as @e[type=minecraft:skeleton,tag=skill_tester,limit=1] at @s facing entity @p[gamemode=!spectator] eyes run function tm_rpg:test/enemy_skill/use

# 全部終わったら止める（use が #step を最後の次まで進める）
execute if score #step test_skill matches 21.. run tellraw @a [{"text":"[敵スキルテスト] ","color":"gold"},{"text":"全部終わりました","color":"green"}]
execute if score #step test_skill matches 21.. run return run function tm_rpg:test/enemy_skill/stop

# 次まで 5 秒
scoreboard players set #timer test_skill 100
