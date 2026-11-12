#> tm_rpg:enemy/boss/crawler/part_tick

# 部位1体ぶんの毎tick処理。crawler/tick から全部位に対して呼ばれる
# @s ＝ 部位。実行位置と向きはマスターのもの（at @s を付けていないので ^ ^ ^ はマスター基準）

# 行動の開始tick: 角度をマスターに揃える（誤差の蓄積を消す）
execute if score #t boss_tmp matches 1 run rotate @s ~ 0
# 定位置へ（向きは書かない＝部位の角度は保たれる）
teleport @s[tag=crawler.body] ^ ^ ^
teleport @s[tag=crawler.head] ^-1.513 ^-2.059 ^1.22
teleport @s[tag=crawler.jaw] ^-1.513 ^1.24 ^1.22
teleport @s[tag=crawler.arm_u] ^-2.932 ^-1.277 ^0.841
teleport @s[tag=crawler.arm_f] ^-5.932 ^1.923 ^0.841
# 行動中の回転と一時的な移動
execute if score #move boss_tmp matches 2 run function tm_rpg:enemy/boss/crawler/move/sweep_parts
execute if score #move boss_tmp matches 3 run function tm_rpg:enemy/boss/crawler/move/slam_parts
execute if score #move boss_tmp matches 4 run function tm_rpg:enemy/boss/crawler/move/roar_parts
# 本体が生きている印
execute if entity @s[tag=crawler.core] run scoreboard players set #core boss_tmp 1
# 被弾の検知
execute if entity @s[tag=crawler.part] run function tm_rpg:enemy/boss/crawler/hurt_check
