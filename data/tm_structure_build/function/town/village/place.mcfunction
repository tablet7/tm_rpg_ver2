#> tm_structure_build:town/village/place

# 村（噴水広場と緑の屋根の村） を実行位置に置く関数（9 個の nbt を place template で並べる）
# 使い方: execute positioned <x> <y> <z> run function tm_structure_build:town/village/place
# 実行位置 ＝ 建物の北西の角の地面の高さ。範囲 108x32x108 のチャンクが読み込まれている必要がある

place template tm_structure_build:town/village/p0_0_0 ~ ~-3 ~
place template tm_structure_build:town/village/p0_0_1 ~ ~-3 ~48
place template tm_structure_build:town/village/p0_0_2 ~ ~-3 ~96
place template tm_structure_build:town/village/p1_0_0 ~48 ~-3 ~
place template tm_structure_build:town/village/p1_0_1 ~48 ~-3 ~48
place template tm_structure_build:town/village/p1_0_2 ~48 ~-3 ~96
place template tm_structure_build:town/village/p2_0_0 ~96 ~-3 ~
place template tm_structure_build:town/village/p2_0_1 ~96 ~-3 ~48
place template tm_structure_build:town/village/p2_0_2 ~96 ~-3 ~96
