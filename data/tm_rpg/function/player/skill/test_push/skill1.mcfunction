#> tm_rpg:player/skill/test_push/skill1

# スキル「test吹き飛ばし（周りの敵を遠ざけるように吹き飛ばす）」の入口。custom_data の skill から player/skill/run 経由で呼ばれる
# 当たる敵がいなくても成功（1）を返す。ダメージは与えない
# @s ＝ スキルを使ったプレイヤー（at @s）

# 本体
function tm_rpg:player/skill/test_push/fire

return 1
