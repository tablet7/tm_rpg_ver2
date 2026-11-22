#> tm_rpg:enemy/skill/wolf_thunder_all

# ボス「ガーディアンウルフ」が、近く（半径 20 マス）のプレイヤー全員の足元に雷を1発ずつ落とす。第2形態の咆哮（リグの咆哮の行動）から、本体の当たり判定（core）として呼ばれる
# 雷1発は予兆付きの入口 enemy/skill/warn_wolf_thunder（赤い輪 1 秒 → 落ちる）。この関数は落とす場所を決めて、それを呼ぶだけ（この関数自体はダメージを与えない）
# 落ちる場所は、この tick のプレイヤーの足元で決まる（あとから動けばよけられる）。空中にいた人の輪は、その高さに出る
# @s ＝ ボスの本体の当たり判定（core）。実行位置 ＝ ボスの足元の中心

execute at @a[tag=mob,gamemode=!spectator,distance=..20] run function tm_rpg:enemy/skill/warn_wolf_thunder
