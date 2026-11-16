#> tm_rpg:enemy/skill/warn_test_push

# 敵がスキル「test吹き飛ばし」を、予兆を出してから使う関数。敵の行動の関数から呼ぶ
# 足元を中心に半径 5 マスの赤いパーティクルの輪を 1 秒出し、そのあと同じ場所・同じ向きから技を使う（enemy/skill/warn）
# この関数は2回呼ばれる: 1回目 ＝ 敵の行動から（予兆を出す）、2回目 ＝ 予兆が終わったとき enemy/skill/warn/fire から（技を使う）
# 予兆なしの入口（enemy/skill/test_push）は作らない。敵の攻撃の技は、予兆付きのこの関数だけを敵に使わせる
# 敵の位置で風の爆発を起こし、周り 5 マスのプレイヤーを、敵から遠ざけるように、だいたい #push_dist マス（5・10・15 のどれか）吹き飛ばす。ダメージは与えない。ほかの敵は吹き飛ばない（プレイヤー用の player/skill/test_push とは別の仕組み）
#   例: execute as <敵> at @s run function tm_rpg:enemy/skill/warn_test_push
# @s ＝ スキルを使う敵（at @s。向き ＝ 使う向き）

# ---- 2回目（予兆が終わった）: 技を使って終わる。warn/fire が選んだタイマー（tag warn_firing）がこのスキルのものかで見分ける
execute store success score #warn_fire_now temp if entity @e[type=minecraft:marker,tag=warn_firing,tag=warn_do_test_push,limit=1]
# 技の本体（tm_rpg:enemy/skill/push_burst/burst）を呼ぶ。入力のスコアは、その直前に入れる
execute if score #warn_fire_now temp matches 1 run scoreboard players set #push_dist temp 10
execute if score #warn_fire_now temp matches 1 run return run function tm_rpg:enemy/skill/push_burst/burst

# ---- 1回目: 予兆を出す（大きさは 0.1 マス単位、時間は tick）
scoreboard players set #warn_time temp 20
scoreboard players set #warn_shape temp 1
scoreboard players set #warn_radius temp 50
function tm_rpg:enemy/skill/warn/start

tag @e[type=minecraft:marker,tag=warn_new,limit=1] add warn_do_test_push
tag @e[type=minecraft:marker,tag=warn_new,limit=1] remove warn_new
