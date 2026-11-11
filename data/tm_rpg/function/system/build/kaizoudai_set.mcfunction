#> tm_rpg:system/build/kaizoudai_set

# 改造台（ドロッパー＋同じ座標の marker）を設置する関数
# 使い方: 設置したい場所で function tm_rpg:system/build/kaizoudai_set（execute positioned <x> <y> <z> run ... で座標指定も可）
# 実行位置のブロックに設置する。すでに改造台の marker がある場所には marker を追加しない

# ブロックの中心に合わせる
execute align xyz positioned ~0.5 ~0.5 ~0.5 run setblock ~ ~ ~ minecraft:dropper
execute align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=marker,tag=kaizoudai,distance=..0.5,limit=1] run summon minecraft:marker ~ ~ ~ {Tags:["kaizoudai"]}
