#> tm_rpg:system/damage_ex/tama_hit

# 同じ弾（id）にすでに当たっていたらダメージを0にし、当たった印（tag hit_<id>）を付けるマクロ関数
# damage_ex/damage_dealt_tama から with storage tm_rpg:damage で呼ばれる
# 弾ごとに違うタグ名を使うためにマクロを使っている（マクロでしか書けない）
# 引数: id
# @s ＝ ダメージを受けるエンティティ

$execute if entity @s[tag=hit_$(id)] run function tm_rpg:system/damage_ex/0damage_func
$tag @s add hit_$(id)
