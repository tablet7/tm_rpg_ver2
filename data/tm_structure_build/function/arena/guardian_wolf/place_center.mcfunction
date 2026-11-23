#> tm_structure_build:arena/guardian_wolf/place_center

# ガーディアンウルフの墓所を、実行位置が広場の中心になるように置く関数
# 使い方: 広場の中心にしたい地面に立って function tm_structure_build:arena/guardian_wolf/place_center
# 実行位置 ＝ 広場の中心の地面の高さ（足元）。墓は中心から南（+z）、入口は北（-z）。中心から半径51の範囲が上書きされる

execute positioned ~-51 ~ ~-51 run function tm_structure_build:arena/guardian_wolf/place
