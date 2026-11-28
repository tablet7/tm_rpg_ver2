#> tm_structure_build:town/village/place_center

# 村（噴水広場と緑の屋根の村）を、実行位置が噴水広場の中心になるように置く関数
# 使い方: 広場の中心にしたい場所に立って function tm_structure_build:town/village/place_center
# 実行位置の足元の高さが、村の外周（段0）の地面の高さになる。広場はそれより1高く、礼拝堂の丘は3高い
# 実行位置から東西南北に約54マス（108x32x108）のチャンクが読み込まれている必要がある
# 置いたあと、実行した場所は噴水の中央の塔の中になる（プレイヤーが実行したら埋まる）。少し離れてから使う
# 広場の中心は村の北西の角から (54, 53) の位置なので、そこへずらして place を呼ぶ

execute positioned ~-54 ~ ~-53 run function tm_structure_build:town/village/place
