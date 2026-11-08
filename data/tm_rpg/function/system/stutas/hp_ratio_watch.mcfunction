#> tm_rpg:system/stutas/hp_ratio_watch

# 最大体力（max_health）をHPの割合に合わせて設定するマクロ関数。player/main、enemy/main から呼ばれる
# 引数: hp（HPの割合 0〜20）
# @s ＝ プレイヤーまたは敵

$attribute @s minecraft:max_health base set $(hp)
