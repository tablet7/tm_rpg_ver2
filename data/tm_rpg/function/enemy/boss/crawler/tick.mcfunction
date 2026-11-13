#> tm_rpg:enemy/boss/crawler/tick

# crawler の毎tick処理。tm_rpg:main から呼ばれる
# @s ＝ マスター（マーカー）

scoreboard players add @s boss_t 1
# 部位側の関数から読めるように、行動番号とtick数を写す
scoreboard players operation #t boss_tmp = @s boss_t
scoreboard players operation #move boss_tmp = @s boss_move
# 本体（core）が生きているかの印。part_tick の中で本体が 1 にする
scoreboard players set #core boss_tmp 0
# 1) マスター側の行動（向き・前進・攻撃判定）。1 は待機
execute if score #move boss_tmp matches 1 run function tm_rpg:enemy/boss/crawler/move/idle
execute if score #move boss_tmp matches 2 run function tm_rpg:enemy/boss/crawler/move/sweep
execute if score #move boss_tmp matches 3 run function tm_rpg:enemy/boss/crawler/move/slam
execute if score #move boss_tmp matches 4 run function tm_rpg:enemy/boss/crawler/move/roar
# 2) 全部位をまとめて1回の検索で処理する（配置・回転・被弾）。at @s を付け直して、動いた後の位置と向きを使う
execute at @s as @e[type=#tm_rpg:crawler_part,tag=crawler,distance=..48] run function tm_rpg:enemy/boss/crawler/part_tick
# 3) 撃破（本体が tm_rpg:enemy/death_main で消えた）、離脱
execute if score #core boss_tmp matches 0 run return run function tm_rpg:enemy/boss/crawler/death
execute unless entity @a[distance=..48] run function tm_rpg:enemy/boss/crawler/despawn
