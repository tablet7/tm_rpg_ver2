#> tm_structure_build:arena/guardian_wolf/place

# ガーディアンウルフの墓所 を実行位置に置く関数（8 個の nbt を place template で並べる）
# 使い方: execute positioned <x> <y> <z> run function tm_structure_build:arena/guardian_wolf/place
# 実行位置 ＝ 建物の北西の角の地面の高さ。範囲 103x40x103 のチャンクが読み込まれている必要がある

place template tm_structure_build:arena/guardian_wolf/p0_0_0 ~ ~-1 ~
place template tm_structure_build:arena/guardian_wolf/p0_0_1 ~ ~-1 ~48
place template tm_structure_build:arena/guardian_wolf/p0_0_2 ~ ~-1 ~96
place template tm_structure_build:arena/guardian_wolf/p1_0_0 ~48 ~-1 ~
place template tm_structure_build:arena/guardian_wolf/p1_0_1 ~48 ~-1 ~48
place template tm_structure_build:arena/guardian_wolf/p1_0_2 ~48 ~-1 ~96
place template tm_structure_build:arena/guardian_wolf/p2_0_0 ~96 ~-1 ~
place template tm_structure_build:arena/guardian_wolf/p2_0_1 ~96 ~-1 ~48
