#> tm_rpg:system/damage_ex/run_func

# storage tm_rpg:damage の func に入っている関数を実行するマクロ関数
# damage_ex/damage_dealt、damage_ex/damage_dealt_tama から、func が non_func（何もしない）以外のときだけ with storage tm_rpg:damage で呼ばれる
# 呼ぶ関数名を変えるためにマクロを使っている（マクロでしか書けない）
# 引数: func
# @s ＝ ダメージを受けるエンティティ

$function $(func)
