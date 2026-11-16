#> tm_rpg:test/enemy_skill/stop

# 敵用スキルのまとめテストを止めて片付ける。test/enemy_skill/start・tick から呼ばれる。手動でも実行できる: function tm_rpg:test/enemy_skill/stop
# テスト用の敵と、テストで置いたタレット（test_turret・test_laser_twin）を消す
# @s ＝ だれでもよい（使わない）

# テストで置いたタレット（テスト用の敵が出したもの。summon_ent_id ＝ 敵の ent_id）
execute as @e[type=minecraft:skeleton,tag=skill_tester,limit=1] run scoreboard players operation #tester_id test_skill = @s ent_id
execute if entity @e[type=minecraft:skeleton,tag=skill_tester,limit=1] as @e[type=minecraft:item_display,tag=test_turret] if score @s summon_ent_id = #tester_id test_skill run kill @s
execute if entity @e[type=minecraft:skeleton,tag=skill_tester,limit=1] as @e[type=minecraft:item_display,tag=laser_twin] if score @s summon_ent_id = #tester_id test_skill run kill @s

# テスト用の敵（倒したときの処理を動かさないように、下へ移してから消す）
execute as @e[type=minecraft:skeleton,tag=skill_tester] at @s run tp @s ~ -1000 ~
kill @e[type=minecraft:skeleton,tag=skill_tester]

scoreboard players set #step test_skill 0
