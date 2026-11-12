#> tm_rpg:player/skill/run

# custom_data の skill に書かれたスキル関数を呼び、その戻り値（成功 1 / 不発 0）を返すマクロ関数。player/skill/start から呼ばれる
# 呼ぶ関数名をアイテムごとに変えるためにマクロを使っている（マクロでしか書けない）。右クリックしたときだけ呼ばれるので重さは問題ない
# 使い方: function tm_rpg:player/skill/run with storage tm_rpg:skill item
# 引数: skill（スキル関数の ID。例 "tm_rpg:player/skill/test/skill1"）
# @s ＝ プレイヤー（at @s）

$return run function $(skill)
