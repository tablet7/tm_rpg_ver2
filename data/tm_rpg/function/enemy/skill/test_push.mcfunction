#> tm_rpg:enemy/skill/test_push

# 敵がスキル「test吹き飛ばし」を使う関数。敵の行動の関数から呼ぶ（プレイヤー用の player/skill/test_push とは別の仕組み）
# 敵の位置で風の爆発を起こし、周り 5 マスのプレイヤーを、敵から遠ざけるように、だいたい #push_dist マス吹き飛ばす（enemy/skill/push_burst/burst）
# ほかの敵は吹き飛ばない。ダメージは与えない（与えるスキルは、enemy/skill/test のように start → skill_damage → 範囲攻撃 → end を先に呼ぶ）
#   例: execute as <敵> at @s run function tm_rpg:enemy/skill/test_push
# @s ＝ スキルを使う敵（at @s）

# 飛ばす距離（マス。5・10・15 のどれか）
scoreboard players set #push_dist temp 10

function tm_rpg:enemy/skill/push_burst/burst
