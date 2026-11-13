#> tm_rpg:player/skill/test_pro/skill3

# スキル「test飛び道具ダメージ」の弾（tag test_pro）の毎 tick の処理。system/delete_entity_direction/damage_main から呼ばれる
# 弾の見た目など、このスキルだけの処理はここに書き、最後に共通の main_projectile/hit の結果を返す（1 ＝ 弾を消す）
# このスキルだけの処理が要らない弾は、この関数と damage_main の行を作らなくてよい（共通の hit だけが動く）
# @s ＝ 弾（at @s）

return run function tm_rpg:player/skill/main_projectile/hit
